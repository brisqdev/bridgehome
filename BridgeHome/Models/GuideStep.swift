import Foundation

/// Represents a distinct phase in the housing stabilization journey.
enum GuideStage: String, CaseIterable, Identifiable, Codable {
    case immediateSafety = "Immediate Safety"
    case essentialDocuments = "Vital Documents"
    case housingSearch = "Search & Vouchers"
    case sustainingHome = "Move-In & Stability"
    
    var id: String { rawValue }
    
    var subtitle: String {
        switch self {
        case .immediateSafety:
            return "Securing emergency shelter, food, and day-to-day safety"
        case .essentialDocuments:
            return "Gathering the identification and records needed for housing"
        case .housingSearch:
            return "Navigating waitlists, vouchers, and application requirements"
        case .sustainingHome:
            return "Signing a lease, deposits, utility setup, and tenant protections"
        }
    }
    
    var iconName: String {
        switch self {
        case .immediateSafety:
            return "shield.lefthalf.filled"
        case .essentialDocuments:
            return "person.text.rectangle"
        case .housingSearch:
            return "magnifyingglass.circle"
        case .sustainingHome:
            return "key.horizontal"
        }
    }
    
    var order: Int {
        switch self {
        case .immediateSafety: return 1
        case .essentialDocuments: return 2
        case .housingSearch: return 3
        case .sustainingHome: return 4
        }
    }
}

/// A single milestone or step within a housing stability stage.
struct GuideStep: Identifiable, Codable, Equatable, Hashable {
    let id: String
    let stage: GuideStage
    let order: Int
    var title: String
    var shortSummary: String
    var detail: String
    var actionChecklist: [String]
    var completedChecklistItems: [String]
    var rightsAndPitfalls: String?
    var isCompleted: Bool
    var personalNotes: String
    var recommendedResourceId: String?
    
    init(
        id: String,
        stage: GuideStage,
        order: Int,
        title: String,
        shortSummary: String,
        detail: String,
        actionChecklist: [String] = [],
        completedChecklistItems: [String] = [],
        rightsAndPitfalls: String? = nil,
        isCompleted: Bool = false,
        personalNotes: String = "",
        recommendedResourceId: String? = nil
    ) {
        self.id = id
        self.stage = stage
        self.order = order
        self.title = title
        self.shortSummary = shortSummary
        self.detail = detail
        self.actionChecklist = actionChecklist
        self.completedChecklistItems = completedChecklistItems
        self.rightsAndPitfalls = rightsAndPitfalls
        self.isCompleted = isCompleted
        self.personalNotes = personalNotes
        self.recommendedResourceId = recommendedResourceId
    }
}
