import Foundation

enum DocumentStatus: String, CaseIterable, Identifiable, Codable {
    case haveIt = "Have It"
    case inProgress = "In Progress"
    case needed = "Needed"
    
    var id: String { rawValue }
    
    var iconName: String {
        switch self {
        case .haveIt: return "checkmark.circle.fill"
        case .inProgress: return "clock.fill"
        case .needed: return "circle"
        }
    }
}

enum DocumentCategory: String, CaseIterable, Identifiable, Codable {
    case identification = "Identification"
    case income = "Income & Benefits"
    case residency = "Housing History"
    case legal = "Legal & Medical"
    
    var id: String { rawValue }
}

struct DocumentItem: Identifiable, Codable, Equatable, Hashable {
    let id: String
    var name: String
    var category: DocumentCategory
    var status: DocumentStatus
    var purpose: String
    var howToAcquire: String
    var feeWaiverNote: String?
    var notes: String
    var lastUpdated: Date
    
    init(
        id: String,
        name: String,
        category: DocumentCategory,
        status: DocumentStatus = .needed,
        purpose: String,
        howToAcquire: String,
        feeWaiverNote: String? = nil,
        notes: String = "",
        lastUpdated: Date = Date()
    ) {
        self.id = id
        self.name = name
        self.category = category
        self.status = status
        self.purpose = purpose
        self.howToAcquire = howToAcquire
        self.feeWaiverNote = feeWaiverNote
        self.notes = notes
        self.lastUpdated = lastUpdated
    }
}
