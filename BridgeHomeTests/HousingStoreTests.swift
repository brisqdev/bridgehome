import XCTest
@testable import BridgeHome

final class HousingStoreTests: XCTestCase {
    var store: HousingStore!
    
    override func setUp() {
        super.setUp()
        store = HousingStore()
        store.resetToDefaults()
    }
    
    func testInitialDataLoaded() {
        XCTAssertFalse(store.resources.isEmpty, "Resources should be loaded")
        XCTAssertFalse(store.binderSteps.isEmpty, "Binder steps should be loaded")
        XCTAssertFalse(store.articles.isEmpty, "Articles should be loaded")
        XCTAssertFalse(store.contacts.isEmpty, "Default contacts should be loaded")
        XCTAssertNotNil(store.selectedResource, "Should have a selected resource")
    }
    
    func testToggleSubstepCompletion() {
        guard let firstStep = store.binderSteps.first,
              let firstSubstep = firstStep.substeps.first else {
            XCTFail("No substeps found")
            return
        }
        
        let initialStatus = firstSubstep.isCompleted
        store.toggleSubstepCompletion(stepId: firstStep.id, substepId: firstSubstep.id)
        
        let updatedSubstep = store.binderSteps
            .first(where: { $0.id == firstStep.id })?
            .substeps.first(where: { $0.id == firstSubstep.id })
        
        XCTAssertEqual(updatedSubstep?.isCompleted, !initialStatus)
    }
    
    func testToggleResourceSaved() {
        guard let firstResource = store.resources.first else {
            XCTFail("No resources found")
            return
        }
        
        XCTAssertFalse(store.isResourceSaved(firstResource.id))
        
        store.toggleResourceSaved(resourceId: firstResource.id)
        XCTAssertTrue(store.isResourceSaved(firstResource.id))
        XCTAssertTrue(store.savedResources.contains(where: { $0.id == firstResource.id }))
        
        store.toggleResourceSaved(resourceId: firstResource.id)
        XCTAssertFalse(store.isResourceSaved(firstResource.id))
    }
    
    func testToggleArticleBookmark() {
        guard let firstArticle = store.articles.first else {
            XCTFail("No articles found")
            return
        }
        
        XCTAssertFalse(store.isArticleBookmarked(firstArticle.id))
        
        store.toggleArticleBookmark(articleId: firstArticle.id)
        XCTAssertTrue(store.isArticleBookmarked(firstArticle.id))
        
        store.toggleArticleBookmark(articleId: firstArticle.id)
        XCTAssertFalse(store.isArticleBookmarked(firstArticle.id))
    }
    
    func testContactManagement() {
        let initialCount = store.contacts.count
        let newContact = TrustedContact(
            name: "Jane Doe",
            role: "Legal Advocate",
            organization: "Tenants Rights Union",
            phone: "555-123-4567",
            email: "jane@tenants.org",
            notes: "Available Thursdays"
        )
        
        store.addContact(newContact)
        XCTAssertEqual(store.contacts.count, initialCount + 1)
        
        store.deleteContact(id: newContact.id)
        XCTAssertEqual(store.contacts.count, initialCount)
    }
    
    func testUniversalRoadmapAndStepNotes() {
        XCTAssertGreaterThan(store.binderSteps.count, 0)
        XCTAssertGreaterThan(store.totalSubstepsCount, 0)
        
        if let firstStep = store.binderSteps.first {
            store.updateStepNotes(stepId: firstStep.id, notes: "Case #98124 Assigned to Sarah")
            let updated = store.binderSteps.first(where: { $0.id == firstStep.id })
            XCTAssertEqual(updated?.personalNotes, "Case #98124 Assigned to Sarah")
        }
    }
}
