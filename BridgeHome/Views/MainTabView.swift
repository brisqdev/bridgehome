import SwiftUI

struct MainTabView: View {
    @Environment(HousingStore.self) private var store
    @State private var selectedTab: Tab
    @State private var initialStepId: String? = nil
    @State private var initialResourceId: String? = nil
    @State private var initialDocumentId: String? = nil
    
    enum Tab: String, Hashable {
        case today
        case guide
        case resources
        case binder
    }
    
    init() {
        let args = ProcessInfo.processInfo.arguments
        if let tabIndex = args.firstIndex(of: "-tab"), tabIndex + 1 < args.count {
            let tabArg = args[tabIndex + 1]
            _selectedTab = State(initialValue: Tab(rawValue: tabArg) ?? .today)
        } else {
            _selectedTab = State(initialValue: .today)
        }
        
        if let screenIndex = args.firstIndex(of: "-step"), screenIndex + 1 < args.count {
            _initialStepId = State(initialValue: args[screenIndex + 1])
        }
        if let resIndex = args.firstIndex(of: "-resource"), resIndex + 1 < args.count {
            _initialResourceId = State(initialValue: args[resIndex + 1])
        }
        if let docIndex = args.firstIndex(of: "-document"), docIndex + 1 < args.count {
            _initialDocumentId = State(initialValue: args[docIndex + 1])
        }
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
        .sheet(item: Binding(
            get: { initialStepId.map { StepSheetItem(id: $0) } },
            set: { initialStepId = $0?.id }
        )) { item in
            NavigationStack {
                StepDetailView(stepId: item.id)
                    .toolbar {
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                initialStepId = nil
                            }
                        }
                    }
            }
        }
        .sheet(item: Binding(
            get: {
                if let resId = initialResourceId, let res = store.resources.first(where: { $0.id == resId }) {
                    return ResourceSheetItem(resource: res)
                }
                return nil
            },
            set: { initialResourceId = $0?.resource.id }
        )) { item in
            NavigationStack {
                ResourceDetailView(resource: item.resource)
                    .toolbar {
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                initialResourceId = nil
                            }
                        }
                    }
            }
        }
        .sheet(item: Binding(
            get: { initialDocumentId.map { DocSheetItem(id: $0) } },
            set: { initialDocumentId = $0?.id }
        )) { item in
            NavigationStack {
                DocumentDetailView(documentId: item.id)
                    .toolbar {
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                initialDocumentId = nil
                            }
                        }
                    }
            }
        }
    }
}

private struct StepSheetItem: Identifiable {
    let id: String
}

private struct ResourceSheetItem: Identifiable {
    var id: String { resource.id }
    let resource: Resource
}

private struct DocSheetItem: Identifiable {
    let id: String
}

#Preview {
    MainTabView()
        .environment(HousingStore())
}
