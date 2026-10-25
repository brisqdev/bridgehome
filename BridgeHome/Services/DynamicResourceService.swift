import Foundation
import MapKit
import CoreLocation

enum DynamicResourceService {
    
    /// Queries verified facilities and Apple Maps live POI APIs around the specified coordinate.
    /// Strictly covers Bergen County, Passaic County, and surrounding NJ & NY areas.
    /// If the coordinate is outside this coverage area, returns an empty array.
    static func fetchNearbyResources(
        around coordinate: CLLocationCoordinate2D,
        category: ResourceCategory = .all,
        customQuery: String? = nil
    ) async -> [Resource] {
        // Enforce coverage boundary: Bergen County, Passaic County & Surrounding NJ/NY
        guard SupportedRegion.contains(coordinate: coordinate) else {
            return []
        }
        
        let userLocation = CLLocation(latitude: coordinate.latitude, longitude: coordinate.longitude)
        
        // 1. Gather matching verified Bergen & Passaic County anchor facilities
        var resources: [Resource] = []
        var seenKeys: Set<String> = []
        
        for anchor in verifiedAnchorFacilities {
            if category != .all && anchor.category != category {
                continue
            }
            if let custom = customQuery?.trimmingCharacters(in: .whitespacesAndNewlines), !custom.isEmpty {
                let matchesName = anchor.name.localizedCaseInsensitiveContains(custom)
                let matchesAddress = anchor.address.localizedCaseInsensitiveContains(custom)
                let matchesOverview = anchor.overview.localizedCaseInsensitiveContains(custom)
                if !matchesName && !matchesAddress && !matchesOverview {
                    continue
                }
            }
            
            let anchorLoc = CLLocation(latitude: anchor.coordinateLatitude, longitude: anchor.coordinateLongitude)
            var copy = anchor
            copy.distanceMiles = ((anchorLoc.distance(from: userLocation) / 1609.34) * 10).rounded() / 10
            
            let dedupKey = "\(anchor.name.lowercased())_\(anchor.coordinateLatitude)_\(anchor.coordinateLongitude)"
            seenKeys.insert(dedupKey)
            resources.append(copy)
        }
        
        // 2. Query Apple Maps live POI for additional local resources in the region
        let queryPlan: [(query: String, targetCategory: ResourceCategory)]
        
        if let custom = customQuery?.trimmingCharacters(in: .whitespacesAndNewlines), !custom.isEmpty {
            queryPlan = [(custom, category)]
        } else {
            switch category {
            case .all:
                queryPlan = [
                    ("Homeless Shelter", .shelter),
                    ("Food Pantry", .meals),
                    ("Legal Aid", .legal),
                    ("Community Health Center", .healthcare),
                    ("Social Services", .documents)
                ]
            case .shelter:
                queryPlan = [
                    ("Homeless Shelter", .shelter),
                    ("Emergency Housing", .shelter)
                ]
            case .meals:
                queryPlan = [
                    ("Food Pantry", .meals),
                    ("Soup Kitchen", .meals),
                    ("Food Bank", .meals)
                ]
            case .legal:
                queryPlan = [
                    ("Legal Aid", .legal),
                    ("Tenant Legal Services", .legal)
                ]
            case .documents:
                queryPlan = [
                    ("Social Services", .documents),
                    ("Human Services Department", .documents)
                ]
            case .healthcare:
                queryPlan = [
                    ("Community Health Center", .healthcare),
                    ("Free Clinic", .healthcare)
                ]
            }
        }
        
        var discoveredItems: [(item: MKMapItem, category: ResourceCategory)] = []
        
        await withTaskGroup(of: [(item: MKMapItem, category: ResourceCategory)].self) { group in
            for plan in queryPlan {
                group.addTask {
                    let request = MKLocalSearch.Request()
                    request.naturalLanguageQuery = plan.query
                    request.region = MKCoordinateRegion(
                        center: coordinate,
                        latitudinalMeters: 12000,
                        longitudinalMeters: 12000
                    )
                    
                    do {
                        let search = MKLocalSearch(request: request)
                        let response = try await search.start()
                        return response.mapItems.prefix(6).map { ($0, plan.targetCategory) }
                    } catch {
                        return []
                    }
                }
            }
            
            for await batch in group {
                discoveredItems.append(contentsOf: batch)
            }
        }
        
        for (item, planCategory) in discoveredItems {
            guard let name = item.name, !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
                continue
            }
            
            let itemCoord = item.placemark.coordinate
            // Ensure discovered item is strictly inside the supported region
            guard SupportedRegion.contains(coordinate: itemCoord) else {
                continue
            }
            
            let normalizedName = name.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
            let latGrid = (itemCoord.latitude * 2000).rounded() / 2000
            let lonGrid = (itemCoord.longitude * 2000).rounded() / 2000
            let dedupKey = "\(normalizedName)_\(latGrid)_\(lonGrid)"
            
            if seenKeys.contains(dedupKey) {
                continue
            }
            seenKeys.insert(dedupKey)
            
            let itemLocation = CLLocation(latitude: itemCoord.latitude, longitude: itemCoord.longitude)
            let distanceMiles = itemLocation.distance(from: userLocation) / 1609.34
            
            let resolvedCategory = resolveCategory(for: name, queryCategory: planCategory)
            let address = formatAddress(placemark: item.placemark)
            let phone = item.phoneNumber ?? "(201) 211-4357"
            
            let resource = Resource(
                id: "poi_\(abs(itemCoord.latitude.hashValue ^ itemCoord.longitude.hashValue))_\(abs(name.hashValue))",
                name: name,
                category: resolvedCategory,
                address: address,
                distanceMiles: (distanceMiles * 10).rounded() / 10,
                phone: phone,
                hours: "Call facility to confirm daily hours & walk-in availability",
                overview: defaultOverview(for: resolvedCategory, name: name),
                servicesOffered: defaultServices(for: resolvedCategory),
                eligibility: defaultEligibility(for: resolvedCategory),
                whatToBring: defaultWhatToBring(for: resolvedCategory),
                isEmergencyHotline: resolvedCategory == .shelter,
                coordinateLatitude: itemCoord.latitude,
                coordinateLongitude: itemCoord.longitude
            )
            resources.append(resource)
        }
        
        // Sort by closest distance to coordinate
        return resources
            .sorted { $0.distanceMiles < $1.distanceMiles }
            .prefix(35)
            .map { $0 }
    }
    
    // MARK: - Verified Bergen County & Passaic County, NJ Anchor Facilities
    static let verifiedAnchorFacilities: [Resource] = [
        // Shelters
        Resource(
            id: "anchor_bergen_housing_center",
            name: "Bergen County Housing, Health and Human Services Center",
            category: .shelter,
            address: "120 S River St, Hackensack, NJ 07601",
            distanceMiles: 0.8,
            phone: "(201) 336-3350",
            hours: "24/7 Intake & Emergency Housing Facility",
            overview: "Full-service 24/7 shelter and community services center operated by Bergen County Department of Human Services, offering emergency beds, meals, healthcare, and permanent housing navigation.",
            servicesOffered: [
                "24/7 emergency shelter beds",
                "Walk-in day shelter & hot meals",
                "On-site medical clinic & case management"
            ],
            eligibility: "Bergen County residents experiencing homelessness or imminent housing crisis.",
            whatToBring: ["Any photo ID (if available, not required for initial intake)"],
            isEmergencyHotline: true,
            coordinateLatitude: 40.8741,
            coordinateLongitude: -74.0442
        ),
        Resource(
            id: "anchor_evas_village_shelter",
            name: "Eva's Village Emergency Shelter & Community Kitchen",
            category: .shelter,
            address: "393 Main St, Paterson, NJ 07501",
            distanceMiles: 5.2,
            phone: "(973) 523-6220",
            hours: "Daily 7:00 AM - 6:00 PM; Overnight Intake 24/7",
            overview: "Comprehensive Passaic County social services organization providing emergency shelter for men, women, and mothers with children, alongside addiction recovery and medical care.",
            servicesOffered: [
                "Emergency shelter lodging",
                "Community kitchen hot meals",
                "Addiction recovery & mental health support"
            ],
            eligibility: "Open to individuals and families in Passaic County needing emergency shelter or meals.",
            whatToBring: ["ID card if available"],
            isEmergencyHotline: true,
            coordinateLatitude: 40.9126,
            coordinateLongitude: -74.1705
        ),
        Resource(
            id: "anchor_family_promise_bergen",
            name: "Family Promise of Bergen County",
            category: .shelter,
            address: "100 Dayton St, Ridgewood, NJ 07450",
            distanceMiles: 6.4,
            phone: "(201) 833-8009",
            hours: "Mon - Fri 9:00 AM - 5:00 PM",
            overview: "Dedicated temporary shelter and support services for working homeless families with children in Bergen County, assisting with sustainable independence.",
            servicesOffered: [
                "Family temporary shelter program",
                "Case management & rental assistance",
                "Financial literacy counseling"
            ],
            eligibility: "Families with children experiencing homelessness in Bergen County.",
            whatToBring: ["Photo ID, birth certificates for children, proof of income if available"],
            isEmergencyHotline: true,
            coordinateLatitude: 40.9785,
            coordinateLongitude: -74.1203
        ),
        Resource(
            id: "anchor_passaic_womens_center",
            name: "Passaic County Domestic Violence Safe House",
            category: .shelter,
            address: "Paterson, NJ 07505",
            distanceMiles: 5.5,
            phone: "(973) 881-1450",
            hours: "24/7 Confidential Helpline & Crisis Shelter",
            overview: "Confidential safe shelter, counseling, and legal advocacy for women and children escaping domestic abuse throughout Passaic County.",
            servicesOffered: [
                "24/7 emergency confidential shelter",
                "Crisis intervention & safety planning",
                "Legal advocacy in Passaic County Family Court"
            ],
            eligibility: "Survivors of domestic violence and their dependent children.",
            whatToBring: ["Essential medications and documents if safe to grab"],
            isEmergencyHotline: true,
            coordinateLatitude: 40.9145,
            coordinateLongitude: -74.1740
        ),
        
        // Food Pantries & Hot Meals
        Resource(
            id: "anchor_cumac_paterson",
            name: "CUMAC - Feeding Mind & Body",
            category: .meals,
            address: "223 Ellison St, Paterson, NJ 07505",
            distanceMiles: 5.1,
            phone: "(973) 742-5518",
            hours: "Mon - Fri 10:30 AM - 3:00 PM",
            overview: "Passaic County's largest anti-hunger organization feeding thousands of families monthly, featuring a market-style choice pantry and job training programs.",
            servicesOffered: [
                "Emergency choice food pantry",
                "Nutritious produce & canned goods",
                "SNAP enrollment assistance"
            ],
            eligibility: "Residents of Paterson, Passaic, and surrounding communities in need of food assistance.",
            whatToBring: ["Photo ID and proof of address"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.9152,
            coordinateLongitude: -74.1678
        ),
        Resource(
            id: "anchor_cfa_hackensack",
            name: "Center for Food Action (CFA) - Hackensack",
            category: .meals,
            address: "316 First St, Hackensack, NJ 07601",
            distanceMiles: 1.1,
            phone: "(201) 569-1804",
            hours: "Mon - Fri 9:00 AM - 4:00 PM",
            overview: "Primary emergency food and utility/rental support agency serving low-income individuals and families across Bergen County and northern NJ.",
            servicesOffered: [
                "7-day emergency food packages",
                "Supermarket food vouchers",
                "Emergency homeless prevention grants"
            ],
            eligibility: "Bergen County residents experiencing food insecurity or emergency income shock.",
            whatToBring: ["Photo ID and utility bill/proof of Bergen County address"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.8795,
            coordinateLongitude: -74.0485
        ),
        Resource(
            id: "anchor_oasis_paterson",
            name: "Oasis - A Haven for Women and Children",
            category: .meals,
            address: "59 Mill St, Paterson, NJ 07501",
            distanceMiles: 5.4,
            phone: "(973) 881-8307",
            hours: "Mon - Fri 8:00 AM - 3:00 PM",
            overview: "Nonprofit providing daily hot breakfast and lunch soup kitchen services, food pantry distribution, and educational classes for women and children in Paterson.",
            servicesOffered: [
                "Daily sit-down hot meals",
                "Weekly food pantry distribution",
                "Baby diapers and infant nutrition"
            ],
            eligibility: "Women and children in Passaic County.",
            whatToBring: ["No paperwork required for daily meal service"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.9142,
            coordinateLongitude: -74.1772
        ),
        Resource(
            id: "anchor_st_peters_haven_clifton",
            name: "St. Peter's Haven Food Pantry",
            category: .meals,
            address: "380 Clifton Ave, Clifton, NJ 07011",
            distanceMiles: 4.8,
            phone: "(973) 546-3406",
            hours: "Tue - Sat 9:00 AM - 12:00 PM",
            overview: "Community food pantry and transitional family shelter in Clifton, supplying dry goods, fresh produce, and meats to families across southern Passaic County.",
            servicesOffered: [
                "Choice food pantry distribution",
                "Seasonal holiday food baskets",
                "Family transitional housing support"
            ],
            eligibility: "Clifton, Passaic, and nearby southern Passaic County residents.",
            whatToBring: ["Photo ID and proof of residence in Passaic County"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.8654,
            coordinateLongitude: -74.1592
        ),
        
        // Legal Aid & Tenant Rights
        Resource(
            id: "anchor_nnjls_bergen",
            name: "Northeast New Jersey Legal Services - Bergen County Office",
            category: .legal,
            address: "190 Moore St, Suite 100, Hackensack, NJ 07601",
            distanceMiles: 0.5,
            phone: "(201) 487-2166",
            hours: "Mon - Fri 8:30 AM - 5:00 PM",
            overview: "Free legal representation and advice for low-income tenants, defending against eviction in Bergen County Special Civil Part, illegal lockouts, and habitability violations.",
            servicesOffered: [
                "Tenant eviction defense & court representation",
                "Security deposit disputes & habitability claims",
                "Public housing & Section 8 voucher defense"
            ],
            eligibility: "Income-eligible Bergen County tenants and seniors.",
            whatToBring: ["Notice to Quit, court summons, copy of lease, rent receipts"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.8841,
            coordinateLongitude: -74.0448
        ),
        Resource(
            id: "anchor_nnjls_passaic",
            name: "Northeast New Jersey Legal Services - Passaic County Office",
            category: .legal,
            address: "152 Market St, 6th Fl, Paterson, NJ 07505",
            distanceMiles: 5.3,
            phone: "(973) 523-2900",
            hours: "Mon - Fri 8:30 AM - 5:00 PM",
            overview: "Legal aid office providing free civil legal defense to low-income Passaic County residents facing unlawful evictions, foreclosure, and domestic violence protective orders.",
            servicesOffered: [
                "Eviction prevention representation in Paterson courts",
                "Unlawful rent increase defense",
                "Public benefits restoration appeals"
            ],
            eligibility: "Income-qualified Passaic County residents.",
            whatToBring: ["Court notices, lease agreement, income verification"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.9161,
            coordinateLongitude: -74.1702
        ),
        
        // ID & Government Documents
        Resource(
            id: "anchor_bergen_social_services",
            name: "Bergen County Board of Social Services",
            category: .documents,
            address: "218 Route 17 North, Rochelle Park, NJ 07662",
            distanceMiles: 1.3,
            phone: "(201) 368-4200",
            hours: "Mon - Fri 8:00 AM - 4:30 PM",
            overview: "County welfare agency administering SNAP food stamps, Medicaid, Temporary Assistance for Needy Families (TANF), and General Assistance (GA) emergency shelter funding.",
            servicesOffered: [
                "Emergency Assistance (EA) motel/shelter placement",
                "NJ SNAP & Medicaid application intake",
                "Vital records fee waiver letters"
            ],
            eligibility: "Bergen County residents needing public assistance or emergency shelter support.",
            whatToBring: ["State ID, Social Security card, birth certificate, proof of income"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.9022,
            coordinateLongitude: -74.0721
        ),
        Resource(
            id: "anchor_passaic_social_services",
            name: "Passaic County Board of Social Services",
            category: .documents,
            address: "80 Hamilton St, Paterson, NJ 07505",
            distanceMiles: 5.2,
            phone: "(973) 881-0100",
            hours: "Mon - Fri 8:30 AM - 4:30 PM",
            overview: "Administers financial, medical, and emergency housing assistance for Passaic County residents, including ID documentation letters and emergency housing vouchers.",
            servicesOffered: [
                "General Assistance & TANF cash aid",
                "Emergency shelter placement vouchers",
                "SNAP & NJ FamilyCare enrollment"
            ],
            eligibility: "Passaic County residents.",
            whatToBring: ["Identification, bank statements, lease or eviction notice"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.9148,
            coordinateLongitude: -74.1709
        ),
        Resource(
            id: "anchor_mvc_lodi",
            name: "NJ MVC Licensing Center - Lodi",
            category: .documents,
            address: "8 Mill St, Lodi, NJ 07644",
            distanceMiles: 1.9,
            phone: "(609) 292-6500",
            hours: "Mon - Fri 8:00 AM - 4:30 PM; Sat 8:00 AM - 3:00 PM",
            overview: "New Jersey Motor Vehicle Commission licensing center providing standard non-driver identification cards and REAL ID credentials with 6-Points of ID.",
            servicesOffered: [
                "Non-driver government photo ID issuance",
                "Address changes and duplicate IDs",
                "6 Points of ID document verification"
            ],
            eligibility: "All NJ residents. Reduced or waived fee non-driver ID available for eligible homeless individuals with agency certification.",
            whatToBring: ["6 Points of ID (Birth certificate, social security card, proof of address or agency letter)"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.8765,
            coordinateLongitude: -74.0881
        ),
        Resource(
            id: "anchor_mvc_wayne",
            name: "NJ MVC Licensing Center - Wayne",
            category: .documents,
            address: "481 Route 46 West, Wayne, NJ 07470",
            distanceMiles: 9.2,
            phone: "(609) 292-6500",
            hours: "Mon - Fri 8:00 AM - 4:30 PM; Sat 8:00 AM - 3:00 PM",
            overview: "Full-service MVC facility serving Passaic County residents for state non-driver photo identification and driver credentials.",
            servicesOffered: [
                "State non-driver photo ID processing",
                "Standard and REAL ID cards",
                "Identification renewals and replacements"
            ],
            eligibility: "NJ residents meeting 6-Points of ID requirement.",
            whatToBring: ["Primary ID documents, Social Security proof, address proof"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.8920,
            coordinateLongitude: -74.2541
        ),
        
        // Community Health Clinics & Healthcare
        Resource(
            id: "anchor_bergen_new_bridge",
            name: "Bergen New Bridge Medical Center - Ambulatory Care",
            category: .healthcare,
            address: "230 E Ridgewood Ave, Paramus, NJ 07652",
            distanceMiles: 5.6,
            phone: "(800) 730-2762",
            hours: "24/7 Emergency & Urgent Psychiatric; Clinic Mon-Fri 8:00 AM - 5:00 PM",
            overview: "New Jersey's largest hospital, publicly owned by Bergen County, delivering comprehensive emergency, primary medical, substance use detox, and mental health care regardless of ability to pay.",
            servicesOffered: [
                "24/7 psychiatric & emergency room care",
                "Primary care and chronic condition management",
                "Inpatient & outpatient addiction treatment"
            ],
            eligibility: "Open to all; charity care assistance provided for uninsured or underinsured patients.",
            whatToBring: ["Any photo ID and insurance cards if available (care provided regardless)"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.9723,
            coordinateLongitude: -74.0538
        ),
        Resource(
            id: "anchor_paterson_community_health",
            name: "Paterson Community Health Center",
            category: .healthcare,
            address: "227 Broadway, Paterson, NJ 07501",
            distanceMiles: 5.2,
            phone: "(973) 790-6590",
            hours: "Mon - Fri 8:30 AM - 5:00 PM; Sat 9:00 AM - 1:00 PM",
            overview: "Federally Qualified Health Center (FQHC) providing comprehensive sliding-scale medical, dental, and behavioral healthcare to Passaic County residents.",
            servicesOffered: [
                "Family medicine & pediatric care",
                "Dental cleaning, fillings, and urgent extractions",
                "Sliding fee scale and Medicaid enrollment"
            ],
            eligibility: "All individuals regardless of insurance or citizenship status; fees based on household income.",
            whatToBring: ["Photo ID, proof of income for sliding scale (if available)"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.9168,
            coordinateLongitude: -74.1672
        ),
        Resource(
            id: "anchor_nhcac_garfield",
            name: "North Hudson Community Action Corporation Health Center",
            category: .healthcare,
            address: "25 Passaic St, Garfield, NJ 07026",
            distanceMiles: 2.1,
            phone: "(201) 210-0108",
            hours: "Mon - Fri 8:00 AM - 5:00 PM",
            overview: "Community health center providing primary preventative care, women's health, and chronic disease treatment on the Bergen-Passaic county border.",
            servicesOffered: [
                "Adult primary care and immunizations",
                "Prenatal and pediatric healthcare",
                "Bilingual Spanish/English care navigators"
            ],
            eligibility: "Open to all community residents; sliding fee discount program for uninsured.",
            whatToBring: ["ID and proof of household income for fee discount"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.8752,
            coordinateLongitude: -74.1105
        ),
        Resource(
            id: "anchor_st_josephs_paterson",
            name: "St. Joseph's Health Family Medicine Center",
            category: .healthcare,
            address: "11 Getty Ave, Paterson, NJ 07503",
            distanceMiles: 4.9,
            phone: "(973) 754-2000",
            hours: "Mon - Fri 8:00 AM - 5:00 PM",
            overview: "Outpatient primary and preventative care clinic operated by St. Joseph's University Medical Center in Paterson, offering affordable family care and charity assistance.",
            servicesOffered: [
                "Comprehensive primary health care",
                "Specialty referrals and prescription assistance",
                "NJ Charity Care application assistance"
            ],
            eligibility: "All community members; charity care financial counselors on-site.",
            whatToBring: ["Photo identification and proof of address"],
            isEmergencyHotline: false,
            coordinateLatitude: 40.8988,
            coordinateLongitude: -74.1601
        )
    ]
    
    // MARK: - Address & Category Resolvers
    private static func formatAddress(placemark: MKPlacemark) -> String {
        var streetParts: [String] = []
        if let subThoroughfare = placemark.subThoroughfare, let thoroughfare = placemark.thoroughfare {
            streetParts.append("\(subThoroughfare) \(thoroughfare)")
        } else if let thoroughfare = placemark.thoroughfare {
            streetParts.append(thoroughfare)
        }
        
        var cityStateParts: [String] = []
        if let locality = placemark.locality {
            cityStateParts.append(locality)
        }
        if let admin = placemark.administrativeArea {
            if let postal = placemark.postalCode {
                cityStateParts.append("\(admin) \(postal)")
            } else {
                cityStateParts.append(admin)
            }
        }
        
        if streetParts.isEmpty && cityStateParts.isEmpty {
            return placemark.title ?? "Local Community Facility"
        }
        
        if streetParts.isEmpty {
            return cityStateParts.joined(separator: ", ")
        }
        
        if cityStateParts.isEmpty {
            return streetParts.joined(separator: ", ")
        }
        
        return "\(streetParts.joined(separator: " ")), \(cityStateParts.joined(separator: ", "))"
    }
    
    private static func resolveCategory(for name: String, queryCategory: ResourceCategory) -> ResourceCategory {
        if queryCategory != .all {
            return queryCategory
        }
        let lower = name.lowercased()
        if lower.contains("shelter") || lower.contains("housing") || lower.contains("mission") || lower.contains("inn") || lower.contains("haven") {
            return .shelter
        }
        if lower.contains("food") || lower.contains("pantry") || lower.contains("kitchen") || lower.contains("meal") || lower.contains("dining") {
            return .meals
        }
        if lower.contains("legal") || lower.contains("law") || lower.contains("justice") || lower.contains("defense") || lower.contains("tenant") {
            return .legal
        }
        if lower.contains("health") || lower.contains("clinic") || lower.contains("care") || lower.contains("medical") || lower.contains("hospital") {
            return .healthcare
        }
        if lower.contains("service") || lower.contains("social") || lower.contains("dmv") || lower.contains("passport") || lower.contains("security") || lower.contains("court") {
            return .documents
        }
        return .shelter
    }
    
    // MARK: - Resource Descriptive Metadata
    private static func defaultOverview(for category: ResourceCategory, name: String) -> String {
        switch category {
        case .shelter:
            return "\(name) provides emergency shelter, intake navigation, and transitional lodging support in your area."
        case .meals:
            return "\(name) offers food distribution, daily emergency meals, or pantry groceries for community residents."
        case .legal:
            return "\(name) provides legal aid, tenant rights defense, and fair housing counsel."
        case .documents:
            return "\(name) assists individuals with vital records, government identification, benefits navigation, and community services."
        case .healthcare:
            return "\(name) provides community healthcare, walk-in or urgent medical triage, and screening services."
        case .all:
            return "\(name) is an active community support facility discovered near your current location."
        }
    }
    
    private static func defaultServices(for category: ResourceCategory) -> [String] {
        switch category {
        case .shelter:
            return [
                "Emergency shelter beds & intake",
                "Case management & housing navigation",
                "Day shelter & hygiene access"
            ]
        case .meals:
            return [
                "Walk-in hot meal service",
                "Emergency grocery boxes & pantry items",
                "Nutritional assistance referrals"
            ]
        case .legal:
            return [
                "Tenant eviction defense & notice review",
                "Fair housing & lease rights consultation",
                "Legal clinic consultations"
            ]
        case .documents:
            return [
                "State ID and vital records assistance",
                "Public benefits & SNAP/Medicaid navigation",
                "Community advocacy & case coordination"
            ]
        case .healthcare:
            return [
                "Community clinic & urgent medical triage",
                "Preventative health screening",
                "Prescription assistance & referrals"
            ]
        case .all:
            return [
                "Direct client intake & referral",
                "Community guidance & resource navigation"
            ]
        }
    }
    
    private static func defaultEligibility(for category: ResourceCategory) -> String {
        switch category {
        case .shelter:
            return "Individuals and families experiencing homelessness or sudden housing displacement."
        case .meals:
            return "Open to all community members in need of food assistance."
        case .legal:
            return "Income-qualified tenants and individuals facing civil legal hardship."
        case .documents:
            return "Open to community residents needing assistance with vital documents or public programs."
        case .healthcare:
            return "Open to all patients; sliding-scale and charity care options available."
        case .all:
            return "Open to community members."
        }
    }
    
    private static func defaultWhatToBring(for category: ResourceCategory) -> [String] {
        switch category {
        case .shelter:
            return [
                "Government ID (if available, not required for emergency night intake)",
                "Prescription medications",
                "Vital identification documents"
            ]
        case .meals:
            return [
                "Photo ID (for pantry registrations; not needed for soup kitchens)",
                "Proof of residence (for certain food pantries)"
            ]
        case .legal:
            return [
                "Lease agreement or tenancy agreement",
                "Court summons or Notice to Quit",
                "Rent payment receipts or bank records"
            ]
        case .documents:
            return [
                "Any existing photo ID or expired identification",
                "Social Security card or birth certificate",
                "Proof of current address or shelter verification letter"
            ]
        case .healthcare:
            return [
                "Photo ID (if available)",
                "Current medications list",
                "Insurance card or proof of income for sliding-scale fees"
            ]
        case .all:
            return [
                "Photo identification (if available)",
                "Relevant paperwork or notices"
            ]
        }
    }
}
