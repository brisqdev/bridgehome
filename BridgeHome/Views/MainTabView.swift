import SwiftUI

struct MainTabView: View {
    @Environment(HousingStore.self) private var store
    @State private var selectedTab: Tab
    
    enum Tab: String, Hashable {
        case home
        case map
        case binder
        case guide
    }
    
    init() {
        let args = ProcessInfo.processInfo.arguments
        if let tabIndex = args.firstIndex(of: "-tab"), tabIndex + 1 < args.count {
            let tabArg = args[tabIndex + 1].lowercased()
            if let tab = Tab(rawValue: tabArg) {
                _selectedTab = State(initialValue: tab)
            } else if tabArg == "0" || tabArg == "home" {
                _selectedTab = State(initialValue: .home)
            } else if tabArg == "1" || tabArg == "map" {
                _selectedTab = State(initialValue: .map)
            } else if tabArg == "2" || tabArg == "binder" {
                _selectedTab = State(initialValue: .binder)
            } else if tabArg == "3" || tabArg == "guide" || tabArg == "handbook" {
                _selectedTab = State(initialValue: .guide)
            } else {
                _selectedTab = State(initialValue: .home)
            }
        } else {
            _selectedTab = State(initialValue: .home)
        }
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(onNavigateToTab: { tab in
                selectedTab = tab
            })
            .tabItem {
                Label("Home", systemImage: "house.fill")
            }
            .tag(Tab.home)
            
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map.fill")
                }
                .tag(Tab.map)
            
            BinderView()
                .tabItem {
                    Label("Binder", systemImage: "folder.fill")
                }
                .tag(Tab.binder)
            
            GuideView()
                .tabItem {
                    Label("Handbook", systemImage: "book.closed.fill")
                }
                .tag(Tab.guide)
        }
        .tint(Theme.Colors.accent)
    }
}

#Preview {
    MainTabView()
        .environment(HousingStore())
}
