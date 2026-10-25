import Foundation
import SwiftUI
import Observation

@Observable
final class HousingStore {
    var resources: [Resource] = []
    var savedResourceIds: Set<String> = []
    var selectedResourceId: String? = nil
    
    var binderSteps: [BinderStep] = []
    var selectedState: String = "All States"
    
    var articles: [Article] = []
    var bookmarkedArticleIds: Set<String> = []
    
    var activeMapCategory: ResourceCategory = .all
    
    var contacts: [TrustedContact] = []
    
    private let storageKey = "BridgeHome_UberStore_v2"
    
    init() {
        loadFromPersistence()
        if resources.isEmpty || binderSteps.isEmpty || articles.isEmpty {
            loadDefaultData()
            saveToPersistence()
        }
        if selectedResourceId == nil, let first = resources.first {
            selectedResourceId = first.id
        }
    }
    
    // MARK: - Selected Resource
    var selectedResource: Resource? {
        resources.first(where: { $0.id == selectedResourceId }) ?? resources.first
    }
    
    var savedResources: [Resource] {
        resources.filter { savedResourceIds.contains($0.id) }
    }
    
    // MARK: - Binder Steps
    var totalSubstepsCount: Int {
        binderSteps.flatMap { $0.substeps }.count
    }
    
    var completedSubstepsCount: Int {
        binderSteps.flatMap { $0.substeps }.filter { $0.isCompleted }.count
    }
    
    var filteredBinderSteps: [BinderStep] {
        binderSteps
    }
    
    func updateStepNotes(stepId: String, notes: String) {
        if let idx = binderSteps.firstIndex(where: { $0.id == stepId }) {
            binderSteps[idx].personalNotes = notes
            saveToPersistence()
        }
    }
    
    // MARK: - Actions
    
    func toggleSubstepCompletion(stepId: String, substepId: String) {
        guard let stepIndex = binderSteps.firstIndex(where: { $0.id == stepId }),
              let subIndex = binderSteps[stepIndex].substeps.firstIndex(where: { $0.id == substepId }) else { return }
        
        binderSteps[stepIndex].substeps[subIndex].isCompleted.toggle()
        saveToPersistence()
    }
    
    func toggleResourceSaved(resourceId: String) {
        if savedResourceIds.contains(resourceId) {
            savedResourceIds.remove(resourceId)
        } else {
            savedResourceIds.insert(resourceId)
        }
        saveToPersistence()
    }
    
    func isResourceSaved(_ resourceId: String) -> Bool {
        savedResourceIds.contains(resourceId)
    }
    
    func toggleArticleBookmark(articleId: String) {
        if bookmarkedArticleIds.contains(articleId) {
            bookmarkedArticleIds.remove(articleId)
        } else {
            bookmarkedArticleIds.insert(articleId)
        }
        saveToPersistence()
    }
    
    func isArticleBookmarked(_ articleId: String) -> Bool {
        bookmarkedArticleIds.contains(articleId)
    }
    
    func addContact(_ contact: TrustedContact) {
        contacts.append(contact)
        saveToPersistence()
    }
    
    func updateContact(_ contact: TrustedContact) {
        if let idx = contacts.firstIndex(where: { $0.id == contact.id }) {
            contacts[idx] = contact
            saveToPersistence()
        }
    }
    
    func deleteContact(id: String) {
        contacts.removeAll(where: { $0.id == id })
        saveToPersistence()
    }
    
    func resetToDefaults() {
        loadDefaultData()
        savedResourceIds.removeAll()
        bookmarkedArticleIds.removeAll()
        selectedState = "All States"
        selectedResourceId = resources.first?.id
        saveToPersistence()
    }
    
    // MARK: - Persistence
    
    private struct PersistedSnapshot: Codable {
        let resources: [Resource]
        let savedResourceIds: [String]
        let binderSteps: [BinderStep]
        let selectedState: String
        let articles: [Article]
        let bookmarkedArticleIds: [String]
        let contacts: [TrustedContact]
    }
    
    private func saveToPersistence() {
        let snapshot = PersistedSnapshot(
            resources: resources,
            savedResourceIds: Array(savedResourceIds),
            binderSteps: binderSteps,
            selectedState: selectedState,
            articles: articles,
            bookmarkedArticleIds: Array(bookmarkedArticleIds),
            contacts: contacts
        )
        if let data = try? JSONEncoder().encode(snapshot) {
            UserDefaults.standard.set(data, forKey: storageKey)
        }
    }
    
    private func loadFromPersistence() {
        guard let data = UserDefaults.standard.data(forKey: storageKey),
              let snapshot = try? JSONDecoder().decode(PersistedSnapshot.self, from: data) else {
            return
        }
        self.resources = snapshot.resources
        self.savedResourceIds = Set(snapshot.savedResourceIds)
        self.binderSteps = snapshot.binderSteps
        self.selectedState = snapshot.selectedState
        self.articles = snapshot.articles
        self.bookmarkedArticleIds = Set(snapshot.bookmarkedArticleIds)
        self.contacts = snapshot.contacts
    }
    
    // MARK: - Seed Data
    
    private func loadDefaultData() {
        // Resources with coordinates for Uber-style map
        resources = [
            Resource(
                id: "res_211",
                name: "2-1-1 Community Helpline",
                category: .shelter,
                address: "Available 24/7 Across All Counties",
                distanceMiles: 0.1,
                phone: "211",
                hours: "Open 24 hours / 7 days",
                overview: "Free, confidential nationwide helpline connecting people to emergency shelter, warming sites, food, and utility bill relief.",
                servicesOffered: [
                    "Emergency shelter placement referrals",
                    "Coordinated entry intake scheduling",
                    "Utility payment assistance grants",
                    "Emergency food pantry network"
                ],
                eligibility: "Open to anyone facing housing instability or basic needs emergencies.",
                whatToBring: ["No paperwork needed for initial dispatch"],
                isEmergencyHotline: true,
                coordinateLatitude: 37.7749,
                coordinateLongitude: -122.4194
            ),
            Resource(
                id: "res_navigator_center",
                name: "Downtown Housing Navigator Center",
                category: .shelter,
                address: "410 S. Main Street, Suite 100",
                distanceMiles: 0.4,
                phone: "(555) 329-8400",
                hours: "Mon – Fri: 8:00 AM – 4:30 PM",
                overview: "Walk-in resource hub offering Coordinated Entry assessments, mail delivery service, secure day lockers, and housing search caseworkers.",
                servicesOffered: [
                    "Coordinated Entry System (CES) assessments",
                    "Secure day-lockers and charging ports",
                    "General delivery client mailing address",
                    "Voucher housing search specialist"
                ],
                eligibility: "Unsheltered individuals, families at imminent risk of eviction.",
                whatToBring: ["Photo ID if available (not required for intake)"],
                isEmergencyHotline: false,
                coordinateLatitude: 37.7812,
                coordinateLongitude: -122.4085
            ),
            Resource(
                id: "res_harbor_dining",
                name: "Harbor Light Community Meals",
                category: .meals,
                address: "825 Pine Street",
                distanceMiles: 0.8,
                phone: "(555) 441-2910",
                hours: "Breakfast 7:00 – 8:30 AM • Dinner 5:30 – 7:00 PM",
                overview: "Warm community dining room offering hot meals twice daily, emergency shelf-stable grocery boxes, and winter clothing.",
                servicesOffered: [
                    "Daily hot breakfast and dinner",
                    "Weekly grocery box distribution (Thursdays 10 AM)",
                    "Hygiene kits, dry socks, and blankets",
                    "Free laundry facility access"
                ],
                eligibility: "Open to all community members without cost or documentation.",
                whatToBring: ["None required"],
                isEmergencyHotline: false,
                coordinateLatitude: 37.7905,
                coordinateLongitude: -122.4112
            ),
            Resource(
                id: "res_tenant_legal",
                name: "Community Legal Aid Tenant Clinic",
                category: .legal,
                address: "1200 Commonwealth Avenue, 3rd Floor",
                distanceMiles: 1.2,
                phone: "(555) 892-1144",
                hours: "Mon, Wed, Fri: 9:00 AM – 3:00 PM",
                overview: "Non-profit legal aid attorneys providing free defense for tenants facing eviction notices, security deposit theft, and voucher discrimination.",
                servicesOffered: [
                    "Eviction Notice to Quit review and court answers",
                    "Source of income (voucher) discrimination defense",
                    "Security deposit recovery letters",
                    "Habitability and repair demand filings"
                ],
                eligibility: "Low-income tenants and families receiving housing subsidies.",
                whatToBring: ["Notice to Quit or court summons", "Lease agreement", "Recent rent receipts"],
                isEmergencyHotline: false,
                coordinateLatitude: 37.7680,
                coordinateLongitude: -122.4280
            ),
            Resource(
                id: "res_vital_id",
                name: "County Vital Records & ID Project",
                category: .documents,
                address: "600 Civic Center Plaza, Room 140",
                distanceMiles: 0.6,
                phone: "(555) 720-5620",
                hours: "Tue & Thu: 9:00 AM – 2:00 PM",
                overview: "Assisting individuals in ordering birth certificates, obtaining DMV homeless fee waiver vouchers, and Social Security cards.",
                servicesOffered: [
                    "Homeless fee waiver certifications for DMV ID",
                    "Out-of-state birth certificate ordering grants",
                    "Social Security card application support",
                    "Notary services for housing affidavits"
                ],
                eligibility: "Individuals experiencing homelessness or transitional housing.",
                whatToBring: ["Any secondary identification or shelter residency verification"],
                isEmergencyHotline: false,
                coordinateLatitude: 37.7788,
                coordinateLongitude: -122.4170
            ),
            Resource(
                id: "res_health_urgent",
                name: "Mercy Wellness & Mobile Urgent Care",
                category: .healthcare,
                address: "315 North 7th Street",
                distanceMiles: 1.5,
                phone: "(555) 604-3388",
                hours: "Mon – Sat: 8:30 AM – 5:00 PM",
                overview: "Comprehensive primary healthcare, mental wellness counseling, dental urgent care, and 30-day prescription bridge supplies.",
                servicesOffered: [
                    "Walk-in primary care and acute injury treatment",
                    "Prescription assistance and refill bridges",
                    "Trauma and mental wellness counseling",
                    "Medicaid (Medi-Cal) on-site enrollment"
                ],
                eligibility: "Sliding-scale and free care for uninsured and underinsured patients.",
                whatToBring: ["Existing prescription bottles", "ID if available"],
                isEmergencyHotline: false,
                coordinateLatitude: 37.7845,
                coordinateLongitude: -122.4020
            )
        ]
        
        // Deep Housing Binder Steps with actionable Substeps and State filtering
        binderSteps = [
            BinderStep(
                id: "step_phase1_safety",
                phaseNumber: 1,
                phaseName: "Emergency & Stabilization",
                title: "Immediate Needs & Intake",
                summary: "Lock in safe shelter, emergency food stamps, and cash diversion.",
                detailedGuide: "Stabilize your immediate safety before beginning long-term housing paperwork. Expedited food assistance and emergency shelter intake ensure your basic needs are met.",
                stateCode: nil,
                substeps: [
                    BinderSubstep(
                        id: "sub_211_call",
                        title: "Call 2-1-1 for Shelter Bed Placement",
                        detail: "Request same-day family or individual shelter intake. Inquire about quiet hours, baggage allowances, and safe parking programs.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: "tel:211"
                    ),
                    BinderSubstep(
                        id: "sub_snap_expedited",
                        title: "Apply for Expedited SNAP (Food Stamps)",
                        detail: "Federal law requires food stamps to be issued within 7 days if your monthly income is under $150 and liquid cash is under $100.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: "https://www.fns.usda.gov/snap"
                    ),
                    BinderSubstep(
                        id: "sub_cash_diversion",
                        title: "Request Crisis Diversion Grant (TANF)",
                        detail: "Ask your county social services office for a one-time non-recurrent diversion payment to prevent homelessness.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    )
                ],
                personalNotes: ""
            ),
            BinderStep(
                id: "step_phase2_id",
                phaseNumber: 2,
                phaseName: "Vital Documents Vault",
                title: "Government Identification & Records",
                summary: "Obtain photo ID fee waiver, birth records, and SSA benefits letter.",
                detailedGuide: "Every subsidized housing waitlist and property manager requires verified photo ID and citizenship/residency proof. Obtain fee waivers first to avoid paying state DMV fees.",
                stateCode: nil,
                substeps: [
                    BinderSubstep(
                        id: "sub_dmv_waiver",
                        title: "Get DMV Homeless Fee Waiver Certification",
                        detail: "Have your shelter manager or Coordinated Entry caseworker sign the state homeless verification form before going to the DMV.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    ),
                    BinderSubstep(
                        id: "sub_birth_cert",
                        title: "Order Certified Birth Certificate",
                        detail: "Request a copy through county vital records. Community action agencies provide fee grants if born out-of-state.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: "https://www.vitalchek.com"
                    ),
                    BinderSubstep(
                        id: "sub_ssa_letter",
                        title: "Download Official SSA Award Letter",
                        detail: "Print your Benefit Verification Letter from SSA.gov or county portal to prove regular monthly income to property managers.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: "https://www.ssa.gov/myaccount"
                    ),
                    BinderSubstep(
                        id: "sub_bank_statements",
                        title: "Assemble 60-Day Banking Ledger",
                        detail: "Download last 2 months of statements from checking account, Direct Express card, or prepaid debit provider.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    )
                ],
                personalNotes: ""
            ),
            BinderStep(
                id: "step_phase3_vouchers",
                phaseNumber: 3,
                phaseName: "Programs & Vouchers",
                title: "Housing Applications & Waitlists",
                summary: "Complete Coordinated Entry assessment and apply for Section 8 & PBV.",
                detailedGuide: "Do not wait for a single waitlist. Apply simultaneously for Coordinated Entry, regional Housing Authority lotteries, and Low-Income Housing Tax Credit (LIHTC) properties.",
                stateCode: nil,
                substeps: [
                    BinderSubstep(
                        id: "sub_ces_interview",
                        title: "Complete Coordinated Entry (CES) Assessment",
                        detail: "Schedule a 30-minute assessment at your local access point to enter the regional prioritization pool for permanent supportive housing.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    ),
                    BinderSubstep(
                        id: "sub_pha_waitlists",
                        title: "Apply to Open Housing Authority Waitlists",
                        detail: "Check AffordableHousing.com and regional housing authority portals for Section 8 Housing Choice Voucher lottery openings.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: "https://www.affordablehousing.com"
                    ),
                    BinderSubstep(
                        id: "sub_lihtc_properties",
                        title: "Direct Application to Tax Credit (LIHTC) Buildings",
                        detail: "Low-Income Housing Tax Credit properties have rent caps based on area median income (AMI) and maintain their own direct building waitlists.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: "https://lihtc.huduser.gov"
                    )
                ],
                personalNotes: ""
            ),
            BinderStep(
                id: "step_phase4_search",
                phaseNumber: 4,
                phaseName: "Landlord Outreach",
                title: "Apartment Search & Scam Defense",
                summary: "Prepare your Renter Resume and protect yourself from deposit fraud.",
                detailedGuide: "Private landlords review dozens of applicants. A clean renter portfolio with references and proof of voucher funding builds trust and overcomes background concerns.",
                stateCode: nil,
                substeps: [
                    BinderSubstep(
                        id: "sub_renter_resume",
                        title: "Create One-Page Renter Resume",
                        detail: "Highlight household size, guaranteed voucher subsidy, steady income, and letters of recommendation from caseworkers or past landlords.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    ),
                    BinderSubstep(
                        id: "sub_state_rights",
                        title: "Verify State Voucher Discrimination Protections",
                        detail: "In CA, NY, and several other states, landlords cannot legally reject applicants simply for using a Section 8 or rapid re-housing voucher.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    ),
                    BinderSubstep(
                        id: "sub_tour_in_person",
                        title: "Tour Interior in Person Before Paying Deposits",
                        detail: "Never send money via CashApp, Zelle, or wire transfer without walking through the physical unit and receiving a formal lease.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    )
                ],
                personalNotes: ""
            ),
            BinderStep(
                id: "step_phase5_lease",
                phaseNumber: 5,
                phaseName: "Move-In & Sustaining",
                title: "Deposit Grants, Lease Signing & Utilities",
                summary: "Secure move-in grants, photograph condition, and lock in utility discounts.",
                detailedGuide: "Ensure your security deposit is protected from day one and enroll in income-qualified utility relief before your first monthly electric bill arrives.",
                stateCode: nil,
                substeps: [
                    BinderSubstep(
                        id: "sub_esg_deposit",
                        title: "Apply for Emergency Solutions Grant (ESG) Deposit Assistance",
                        detail: "Request local community action funding to cover first month's rent and security deposit directly to the property manager.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    ),
                    BinderSubstep(
                        id: "sub_walkthrough_photos",
                        title: "Complete Timestamped Move-In Walkthrough Photos",
                        detail: "Take detailed photos of every wall, window, appliance, and faucet before unpacking to guarantee deposit return.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    ),
                    BinderSubstep(
                        id: "sub_utility_discount",
                        title: "Enroll in Low-Income Utility Rates (HEAP/CARE)",
                        detail: "Contact electric and gas providers immediately to receive the 20%-35% monthly low-income discount on utilities.",
                        isCompleted: false,
                        stateCode: nil,
                        portalURL: nil
                    )
                ],
                personalNotes: ""
            )
        ]
        
        // Comprehensive Articles for the Guide Screen (Article Menu View)
        articles = [
            // Legal & State Laws
            Article(
                id: "art_state_laws",
                title: "State-by-State Tenant Protections & Eviction Notice Laws",
                category: .legalAndStateLaws,
                stateTag: "CA, NY, TX, FL",
                readTimeMinutes: 5,
                overview: "Understanding eviction notice windows, source-of-income laws, and rent gouging caps across major US states.",
                sections: [
                    ArticleSection(
                        heading: "Notice Periods Before Court Filings",
                        body: "Landlords cannot evict you without court authorization. Notice to Quit periods differ significantly by state:",
                        bulletPoints: [
                            "California: 3-Day Notice to Pay or Quit (AB 1482 requires 'just cause' for tenancies over 12 months).",
                            "New York: 14-Day Written Demand for Rent required before any summary eviction filing.",
                            "Texas: 3-Day Notice to Vacate (unless written lease explicitly specifies a 24-hour notice).",
                            "Florida: 3-Day Notice to Pay or Vacate excluding weekends and court holidays."
                        ],
                        callout: "Never vacate your home based solely on verbal threats or text messages. Self-help evictions (changing locks, shutting off water/power) are illegal felonies in all 50 states."
                    ),
                    ArticleSection(
                        heading: "Source of Income Protections (Vouchers)",
                        body: "Several states legally prohibit landlords from refusing Section 8 vouchers or rental subsidies. In California (SB 329), New York (State Human Rights Law), and New Jersey, refusing to accept an applicant based on voucher payment is illegal discrimination.",
                        bulletPoints: [
                            "Landlords cannot advertise 'No Section 8' or 'No Vouchers'.",
                            "Income requirements must be calculated only on your portion of the rent, not the full rent amount."
                        ]
                    )
                ],
                keyTakeaways: [
                    "Self-help lockouts are illegal nationwide",
                    "Notice to Quit windows range from 3 to 14 days depending on state",
                    "CA and NY prohibit voucher discrimination by law"
                ]
            ),
            Article(
                id: "art_security_deposits",
                title: "Security Deposit Return Caps, Limits & Deductions",
                category: .legalAndStateLaws,
                stateTag: "National",
                readTimeMinutes: 4,
                overview: "How to legally protect your deposit and demand return within statutory state deadlines.",
                sections: [
                    ArticleSection(
                        heading: "Maximum Deposit Limits by Law",
                        body: "Many states cap security deposits to 1 month's rent (e.g. California AB 12 effective 2024, New York Housing Stability Act). Landlords cannot demand 3 or 4 months upfront.",
                        bulletPoints: [
                            "Normal wear and tear (faded paint, minor carpet tracking) cannot be deducted.",
                            "Landlords must provide an itemized list of deductions with receipts within 14 to 30 days of moving out."
                        ]
                    )
                ],
                keyTakeaways: [
                    "Most progressive states limit deposits to 1 month's rent",
                    "Always demand itemized receipts within 21 days",
                    "Pre-move walkthrough photos are your best legal shield"
                ]
            ),
            // Community Programs
            Article(
                id: "art_community_action",
                title: "How to Find Community Action Agencies & Mutual Aid Groups",
                category: .communityPrograms,
                stateTag: "National",
                readTimeMinutes: 4,
                overview: "Connecting with local Community Action Partnerships (CAP), local mutual aid pods, and church pantries.",
                sections: [
                    ArticleSection(
                        heading: "What are Community Action Agencies?",
                        body: "Established under the Economic Opportunity Act, over 1,000 local Community Action Agencies operate nationwide. They manage federal Emergency Solutions Grants, weatherization assistance, and rental bridge programs.",
                        bulletPoints: [
                            "Locate your county agency via CommunityActionPartnership.com",
                            "Walk in for utility emergency grants and security deposit vouchers",
                            "Connect with peer housing navigators who maintain local landlord relationships"
                        ]
                    ),
                    ArticleSection(
                        heading: "Joining Local Mutual Aid Groups",
                        body: "Mutual aid groups operate without bureaucracy. Search Facebook, Instagram, or local community centers for 'Mutual Aid [Your City]' to access free daily meals, baby supplies, tents, and community rides."
                    )
                ],
                keyTakeaways: [
                    "Over 1,000 CAP agencies provide direct cash and housing grants",
                    "Mutual aid networks provide immediate supplies without paperwork"
                ]
            ),
            // Documents Needed
            Article(
                id: "art_id_waivers",
                title: "How to Get a Free State ID Using Homeless Fee Waivers",
                category: .documentsNeeded,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Step-by-step instructions for getting state photo identification without paying DMV fees.",
                sections: [
                    ArticleSection(
                        heading: "The Homeless Status Verification Form",
                        body: "Most DMVs (including CA, NY, IL, TX) have established fee waiver programs. An authorized agency (shelter, social services, or legal aid) verifies your housing status on official letterhead or state form.",
                        bulletPoints: [
                            "California: DMV Form DL 933 signed by designated shelter liaison",
                            "New York: Form MV-44 with approved homeless services waiver",
                            "Ask the DMV clerk for an immediate temporary paper ID while the plastic card is mailed to a shelter or general delivery"
                        ]
                    )
                ],
                keyTakeaways: [
                    "Never pay $35+ for an ID without checking state fee waiver laws",
                    "Use shelter or postal general delivery if you lack an address",
                    "Temporary paper IDs are valid for bank account opening and benefits"
                ]
            ),
            // Safety Instructions
            Article(
                id: "art_safe_parking",
                title: "Safe Vehicle Living: Legal Parking, Heat & Safety Protocols",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 4,
                overview: "Essential safety guidance for sleeping in a vehicle, finding designated safe lots, and avoiding tickets.",
                sections: [
                    ArticleSection(
                        heading: "Designated Safe Parking Programs",
                        body: "Many cities now operate permitted Safe Parking Programs with 24/7 security, restrooms, water, and on-site housing navigators.",
                        bulletPoints: [
                            "Call 2-1-1 to ask for the nearest designated Safe Parking lot",
                            "Never run a vehicle engine overnight for heating due to carbon monoxide risk; use sub-zero rated sleeping bags and insulated window shades",
                            "Keep vehicle registration and insurance up to date to avoid towing"
                        ]
                    )
                ],
                keyTakeaways: [
                    "Safe parking lots provide overnight security and restrooms",
                    "Never run engines inside closed spaces or while sleeping",
                    "Window insulation ensures both warmth and privacy"
                ]
            ),
            // Families & Situations
            Article(
                id: "art_family_rights",
                title: "McKinney-Vento Act: Education Rights for Families Experiencing Homelessness",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 4,
                overview: "Federal protections guaranteeing children can remain in their school with free transportation.",
                sections: [
                    ArticleSection(
                        heading: "Your Children's Rights Under Federal Law",
                        body: "Under the McKinney-Vento Homeless Assistance Act, children who lack a fixed, regular, and adequate nighttime residence have guaranteed rights:",
                        bulletPoints: [
                            "Right to remain in their 'school of origin' even if you move into a shelter across town",
                            "Free district-provided transportation to and from the school of origin",
                            "Immediate enrollment even without proof of residency, birth certificates, or immunization records",
                            "Free daily breakfast and lunch programs"
                        ]
                    )
                ],
                keyTakeaways: [
                    "Schools must provide free transportation back to school of origin",
                    "Immediate enrollment is federally protected without paperwork",
                    "Every school district has a designated Homeless Liaison"
                ]
            )
        ]
        
        // Trusted Contacts
        contacts = [
            TrustedContact(
                id: "contact_211",
                name: "Community Helpline (2-1-1)",
                role: "24/7 Crisis & Shelter Dispatch",
                organization: "United Way",
                phone: "211",
                email: "help@211.org",
                notes: "Call immediately for emergency shelter intake or warming center availability."
            ),
            TrustedContact(
                id: "contact_caseworker_chen",
                name: "Sarah Chen",
                role: "Housing Navigator",
                organization: "Downtown Housing Navigator Center",
                phone: "(555) 329-8412",
                email: "schen@navigatorcenter.org",
                notes: "Assisting with Coordinated Entry assessment and voucher application documentation."
            ),
            TrustedContact(
                id: "contact_legal_aid",
                name: "Tenant Defense Hotline",
                role: "Legal Aid Advocate",
                organization: "Community Legal Aid",
                phone: "(555) 892-1144",
                email: "housing@legalaid.org",
                notes: "Assists with eviction notices, lockouts, and voucher discrimination."
            )
        ]
    }
}
