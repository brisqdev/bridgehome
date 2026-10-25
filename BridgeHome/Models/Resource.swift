import Foundation

enum ResourceCategory: String, CaseIterable, Identifiable, Codable {
    case all = "All"
    case shelter = "Shelter"
    case meals = "Meals"
    case legal = "Legal Aid"
    case documents = "Documents"
    case healthcare = "Healthcare"
    
    var id: String { rawValue }
    
    var iconName: String {
        switch self {
        case .all: return "square.grid.2x2"
        case .shelter: return "bed.double"
        case .meals: return "fork.knife"
        case .legal: return "scale.3d"
        case .documents: return "doc.badge.arrow.up"
        case .healthcare: return "heart.text.square"
        }
    }
}

struct Resource: Identifiable, Codable, Equatable, Hashable {
    let id: String
    var name: String
    var category: ResourceCategory
    var address: String
    var phone: String
    var hours: String
    var overview: String
    var servicesOffered: [String]
    var eligibility: String
    var whatToBring: [String]
    var isEmergencyHotline: Bool
    var coordinateLatitude: Double?
    var coordinateLongitude: Double?
    
    var sanitizedPhoneNumber: String {
        phone.filter { "0123456789".contains($0) }
    }
    
    var phoneURL: URL? {
        URL(string: "tel:\(sanitizedPhoneNumber)")
    }
    
    var mapsURL: URL? {
        let encodedAddress = address.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        return URL(string: "http://maps.apple.com/?address=\(encodedAddress)")
    }
}
