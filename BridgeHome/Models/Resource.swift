import Foundation
import CoreLocation

enum ResourceCategory: String, CaseIterable, Identifiable, Codable {
    case all = "All"
    case shelter = "Shelter"
    case meals = "Hot Meals"
    case legal = "Legal Aid"
    case documents = "ID & Docs"
    case healthcare = "Healthcare"
    
    var id: String { rawValue }
    
    var iconName: String {
        switch self {
        case .all: return "square.grid.2x2.fill"
        case .shelter: return "bed.double.fill"
        case .meals: return "fork.knife"
        case .legal: return "scale.3d"
        case .documents: return "person.text.rectangle.fill"
        case .healthcare: return "cross.fill"
        }
    }
}

struct Resource: Identifiable, Codable, Equatable, Hashable {
    let id: String
    var name: String
    var category: ResourceCategory
    var address: String
    var distanceMiles: Double
    var phone: String
    var hours: String
    var overview: String
    var servicesOffered: [String]
    var eligibility: String
    var whatToBring: [String]
    var isEmergencyHotline: Bool
    var coordinateLatitude: Double
    var coordinateLongitude: Double
    
    init(
        id: String,
        name: String,
        category: ResourceCategory,
        address: String,
        distanceMiles: Double = 0.5,
        phone: String,
        hours: String,
        overview: String,
        servicesOffered: [String] = [],
        eligibility: String = "Open to all",
        whatToBring: [String] = [],
        isEmergencyHotline: Bool = false,
        coordinateLatitude: Double = 37.7749,
        coordinateLongitude: Double = -122.4194
    ) {
        self.id = id
        self.name = name
        self.category = category
        self.address = address
        self.distanceMiles = distanceMiles
        self.phone = phone
        self.hours = hours
        self.overview = overview
        self.servicesOffered = servicesOffered
        self.eligibility = eligibility
        self.whatToBring = whatToBring
        self.isEmergencyHotline = isEmergencyHotline
        self.coordinateLatitude = coordinateLatitude
        self.coordinateLongitude = coordinateLongitude
    }
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinateLatitude, longitude: coordinateLongitude)
    }
    
    var sanitizedPhoneNumber: String {
        phone.filter { "0123456789".contains($0) }
    }
    
    var phoneURL: URL? {
        URL(string: "tel:\(sanitizedPhoneNumber)")
    }
    
    var mapsURL: URL? {
        let encodedAddress = address.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        return URL(string: "http://maps.apple.com/?daddr=\(coordinateLatitude),\(coordinateLongitude)&q=\(encodedAddress)")
    }
}
