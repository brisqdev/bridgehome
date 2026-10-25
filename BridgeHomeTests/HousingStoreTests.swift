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
        XCTAssertFalse(store.guideSteps.isEmpty, "Guide steps should be loaded")
        XCTAssertFalse(store.resources.isEmpty, "Resources should be loaded")
        XCTAssertFalse(store.documents.isEmpty, "Documents should be loaded")
        XCTAssertFalse(store.contacts.isEmpty, "Default contacts should be loaded")
        XCTAssertNotNil(store.dailyFocusStep, "Should have a daily focus step")
    }
    
    func testToggleStepCompletion() {
        guard let firstStep = store.guideSteps.first else {
            XCTFail("No guide steps")
            return
        }
        
        let initialStatus = firstStep.isCompleted
        store.toggleStepCompletion(stepId: firstStep.id)
        
        let updatedStep = store.guideSteps.first(where: { $0.id == firstStep.id })
        XCTAssertEqual(updatedStep?.isCompleted, !initialStatus)
    }
    
    func testChecklistToggling() {
        guard let stepWithChecklist = store.guideSteps.first(where: { !$0.actionChecklist.isEmpty }),
              let firstCheckItem = stepWithChecklist.actionChecklist.first else {
            XCTFail("No step with checklist")
            return
        }
        
        XCTAssertFalse(stepWithChecklist.completedChecklistItems.contains(firstCheckItem))
        
        store.toggleChecklistItem(stepId: stepWithChecklist.id, item: firstCheckItem)
        let updatedStep = store.guideSteps.first(where: { $0.id == stepWithChecklist.id })
        XCTAssertTrue(updatedStep?.completedChecklistItems.contains(firstCheckItem) ?? false)
        
        store.toggleChecklistItem(stepId: stepWithChecklist.id, item: firstCheckItem)
        let toggledBackStep = store.guideSteps.first(where: { $0.id == stepWithChecklist.id })
        XCTAssertFalse(toggledBackStep?.completedChecklistItems.contains(firstCheckItem) ?? true)
    }
    
    func testDailyFocusSelection() {
        guard store.guideSteps.count > 1 else { return }
        let secondStep = store.guideSteps[1]
        
        store.setDailyFocus(stepId: secondStep.id)
        XCTAssertEqual(store.dailyFocusStepId, secondStep.id)
        XCTAssertEqual(store.dailyFocusStep?.id, secondStep.id)
    }
    
    func testToggleResourceSaved() {
        guard let firstResource = store.resources.first else {
            XCTFail("No resources")
            return
        }
        
        XCTAssertFalse(store.isResourceSaved(firstResource.id))
        
        store.toggleResourceSaved(resourceId: firstResource.id)
        XCTAssertTrue(store.isResourceSaved(firstResource.id))
        XCTAssertTrue(store.savedResources.contains(where: { $0.id == firstResource.id }))
        
        store.toggleResourceSaved(resourceId: firstResource.id)
        XCTAssertFalse(store.isResourceSaved(firstResource.id))
    }
    
    func testDocumentStatusUpdate() {
        guard let firstDoc = store.documents.first else {
            XCTFail("No documents")
            return
        }
        
        store.updateDocumentStatus(documentId: firstDoc.id, status: .haveIt)
        let updatedDoc = store.documents.first(where: { $0.id == firstDoc.id })
        XCTAssertEqual(updatedDoc?.status, .haveIt)
        
        store.updateDocumentStatus(documentId: firstDoc.id, status: .inProgress)
        let inProgressDoc = store.documents.first(where: { $0.id == firstDoc.id })
        XCTAssertEqual(inProgressDoc?.status, .inProgress)
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
}
