import Foundation

struct BinderSubstep: Identifiable, Codable, Equatable, Hashable {
    let id: String
    var title: String
    var detail: String
    var isCompleted: Bool
    var stateCode: String?
    var portalURL: String?
}

struct BinderStep: Identifiable, Codable, Equatable, Hashable {
    let id: String
    let phaseNumber: Int
    let phaseName: String
    var title: String
    var summary: String
    var detailedGuide: String
    var stateCode: String?
    var substeps: [BinderSubstep]
    var personalNotes: String
    
    var completedSubstepsCount: Int {
        substeps.filter { $0.isCompleted }.count
    }
    
    var isFullyCompleted: Bool {
        !substeps.isEmpty && substeps.allSatisfy { $0.isCompleted }
    }
}
