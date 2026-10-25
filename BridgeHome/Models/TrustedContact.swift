import Foundation

struct TrustedContact: Identifiable, Codable, Equatable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var role: String
    var organization: String
    var phone: String
    var email: String
    var notes: String
    
    var sanitizedPhoneNumber: String {
        phone.filter { "0123456789".contains($0) }
    }
    
    var phoneURL: URL? {
        URL(string: "tel:\(sanitizedPhoneNumber)")
    }
    
    var smsURL: URL? {
        URL(string: "sms:\(sanitizedPhoneNumber)")
    }
    
    var emailURL: URL? {
        URL(string: "mailto:\(email)")
    }
}
