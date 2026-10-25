import SwiftUI

@main
struct BridgeHomeApp: App {
    @State private var store = HousingStore()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environment(store)
        }
    }
}
