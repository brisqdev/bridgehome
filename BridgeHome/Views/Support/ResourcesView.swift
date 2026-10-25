import SwiftUI

struct ResourcesView: View {
    @Environment(HousingStore.self) private var store
    
    @State private var searchText: String = ""
    @State private var selectedCategory: ResourceCategory = .all
    @State private var showSavedOnly: Bool = false
    
    private var filteredResources: [Resource] {
        store.resources.filter { resource in
            let matchesCategory = selectedCategory == .all || resource.category == selectedCategory
            let matchesSaved = !showSavedOnly || store.isResourceSaved(resource.id)
            let matchesSearch = searchText.isEmpty ||
                resource.name.localizedCaseInsensitiveContains(searchText) ||
                resource.overview.localizedCaseInsensitiveContains(searchText) ||
                resource.servicesOffered.contains { $0.localizedCaseInsensitiveContains(searchText) }
            
            return matchesCategory && matchesSaved && matchesSearch
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: Theme.Spacing.element) {
                    
                    // Category Filter Scroll (Apple Music horizontal genre pills)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            // Saved Only Filter Pill
                            Button {
                                showSavedOnly.toggle()
                            } label: {
                                HStack(spacing: 5) {
                                    Image(systemName: showSavedOnly ? "bookmark.fill" : "bookmark")
                                        .font(.system(size: 12))
                                    Text("Saved")
                                        .font(.system(.subheadline, design: .default, weight: .medium))
                                }
                                .padding(.horizontal, 14)
                                .padding(.vertical, 8)
                                .background(showSavedOnly ? Theme.Colors.accent : Theme.Colors.secondaryBackground)
                                .foregroundStyle(showSavedOnly ? .white : Theme.Colors.primaryText)
                                .clipShape(Capsule())
                            }
                            .buttonStyle(.plain)
                            
                            ForEach(ResourceCategory.allCases) { category in
                                Button {
                                    selectedCategory = category
                                } label: {
                                    Text(category.rawValue)
                                        .font(.system(.subheadline, design: .default, weight: .medium))
                                        .padding(.horizontal, 14)
                                        .padding(.vertical, 8)
                                        .background(selectedCategory == category && !showSavedOnly ? Theme.Colors.primaryText : Theme.Colors.secondaryBackground)
                                        .foregroundStyle(selectedCategory == category && !showSavedOnly ? Theme.Colors.background : Theme.Colors.primaryText)
                                        .clipShape(Capsule())
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 4)
                        .padding(.bottom, 6)
                    }
                    
                    // Results List
                    if filteredResources.isEmpty {
                        VStack(spacing: 12) {
                            Text("No resources found")
                                .font(.system(.headline, design: .default))
                                .foregroundStyle(Theme.Colors.primaryText)
                            Text("Try searching for different terms or reset your category filter.")
                                .font(.system(.subheadline, design: .default))
                                .foregroundStyle(Theme.Colors.secondaryText)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.top, 60)
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    } else {
                        VStack(spacing: 0) {
                            ForEach(filteredResources) { resource in
                                NavigationLink {
                                    ResourceDetailView(resource: resource)
                                } label: {
                                    ResourceRow(
                                        resource: resource,
                                        isSaved: store.isResourceSaved(resource.id),
                                        onToggleSave: {
                                            store.toggleResourceSaved(resourceId: resource.id)
                                        }
                                    )
                                }
                                .buttonStyle(.plain)
                                
                                if resource.id != filteredResources.last?.id {
                                    Divider()
                                        .padding(.leading, 60)
                                }
                            }
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.bottom, Theme.Spacing.section)
                    }
                }
            }
            .navigationTitle("Resources")
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchText, prompt: "Search shelters, food, legal clinics...")
        }
    }
}

#Preview {
    ResourcesView()
        .environment(HousingStore())
}
