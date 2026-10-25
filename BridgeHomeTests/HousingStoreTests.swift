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
    
    func testSupportedRegionBoundary() {
        // Supported coordinates: Bergen County, Passaic County, and surrounding NJ/NY
        let hackensack = CLLocationCoordinate2D(latitude: 40.8938, longitude: -74.0760)
        let paterson = CLLocationCoordinate2D(latitude: 40.9161, longitude: -74.1702)
        let clifton = CLLocationCoordinate2D(latitude: 40.8654, longitude: -74.1592)
        let nyc = CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)
        
        XCTAssertTrue(SupportedRegion.contains(coordinate: hackensack), "Hackensack, NJ must be supported")
        XCTAssertTrue(SupportedRegion.contains(coordinate: paterson), "Paterson, NJ must be supported")
        XCTAssertTrue(SupportedRegion.contains(coordinate: clifton), "Clifton, NJ must be supported")
        XCTAssertTrue(SupportedRegion.contains(coordinate: nyc), "Surrounding NYC area must be supported")
        
        // Unsupported coordinates outside coverage zone
        let sanFrancisco = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
        let philadelphia = CLLocationCoordinate2D(latitude: 39.9526, longitude: -75.1652)
        let trenton = CLLocationCoordinate2D(latitude: 40.2171, longitude: -74.7429)
        let losAngeles = CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)
        
        XCTAssertFalse(SupportedRegion.contains(coordinate: sanFrancisco), "San Francisco must not be supported")
        XCTAssertFalse(SupportedRegion.contains(coordinate: philadelphia), "Philadelphia must not be supported")
        XCTAssertFalse(SupportedRegion.contains(coordinate: trenton), "Trenton must not be supported")
        XCTAssertFalse(SupportedRegion.contains(coordinate: losAngeles), "Los Angeles must not be supported")
    }
    
    func testDynamicResourceServiceRegionGate() async {
        // Coordinate in unsupported region must return empty results
        let unsupportedCoord = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
        let outsideResults = await DynamicResourceService.fetchNearbyResources(around: unsupportedCoord)
        XCTAssertTrue(outsideResults.isEmpty, "Querying outside supported region must yield empty results")
        
        // Coordinate in Bergen/Passaic must return local anchor resources
        let supportedCoord = SupportedRegion.center
        let insideResults = await DynamicResourceService.fetchNearbyResources(around: supportedCoord)
        XCTAssertFalse(insideResults.isEmpty, "Querying inside Bergen/Passaic must yield resources")
        
        for res in insideResults {
            let coord = CLLocationCoordinate2D(latitude: res.coordinateLatitude, longitude: res.coordinateLongitude)
            XCTAssertTrue(SupportedRegion.contains(coordinate: coord), "Resource \(res.name) coordinate must be within SupportedRegion")
        }
    }
}
