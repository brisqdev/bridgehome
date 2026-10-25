import Foundation

enum ArticleCategory: String, CaseIterable, Identifiable, Codable {
    case all = "All"
    case legalAndStateLaws = "Legal & State Laws"
    case communityPrograms = "Community & Groups"
    case documentsNeeded = "Documents & Waivers"
    case safetyInstructions = "Safety & Emergency"
    case familyAndSituations = "Families & Situations"
    
    var id: String { rawValue }
    
    var iconName: String {
        switch self {
        case .all: return "square.grid.2x2.fill"
        case .legalAndStateLaws: return "scale.3d"
        case .communityPrograms: return "person.3.fill"
        case .documentsNeeded: return "doc.text.fill"
        case .safetyInstructions: return "shield.fill"
        case .familyAndSituations: return "figure.2.and.child.holdinghands"
        }
    }
}

struct ArticleSection: Identifiable, Codable, Equatable, Hashable {
    var id: String = UUID().uuidString
    var heading: String
    var body: String
    var bulletPoints: [String] = []
    var callout: String? = nil
}

struct Article: Identifiable, Codable, Equatable, Hashable {
    let id: String
    var title: String
    var category: ArticleCategory
    var stateTag: String?
    var readTimeMinutes: Int
    var overview: String
    var sections: [ArticleSection]
    var keyTakeaways: [String]
    var isBookmarked: Bool = false
    var relatedArticleIds: [String] = []
    
    init(
        id: String,
        title: String,
        category: ArticleCategory,
        stateTag: String? = nil,
        readTimeMinutes: Int = 4,
        overview: String,
        sections: [ArticleSection] = [],
        keyTakeaways: [String] = [],
        isBookmarked: Bool = false,
        relatedArticleIds: [String] = []
    ) {
        self.id = id
        self.title = title
        self.category = category
        self.stateTag = stateTag
        self.readTimeMinutes = readTimeMinutes
        self.overview = overview
        self.sections = sections
        self.keyTakeaways = keyTakeaways
        self.isBookmarked = isBookmarked
        self.relatedArticleIds = relatedArticleIds
    }
}
