import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Tab = .today
    
    enum Tab: Int, Hashable {
        case today
        case guide
        case resources
        case binder
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            TodayView()
                .tabItem {
                    Label("Today", systemImage: selectedTab == .today ? "house.fill" : "house")
                }
                .tag(Tab.today)
            
            GuideView()
                .tabItem {
                    Label("Guide", systemImage: selectedTab == .guide ? "map.fill" : "map")
                }
                .tag(Tab.guide)
            
            ResourcesView()
                .tabItem {
                    Label("Resources", systemImage: selectedTab == .resources ? "building.2.fill" : "building.2")
                }
                .tag(Tab.resources)
            
            BinderView()
                .tabItem {
                    Label("Binder", systemImage: selectedTab == .binder ? "folder.fill" : "folder")
                }
                .tag(Tab.binder)
        }
        .tint(Theme.Colors.accent)
    }
}
