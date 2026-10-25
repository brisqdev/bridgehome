import SwiftUI

struct TodayView: View {
    @Environment(HousingStore.self) private var store
    @State private var showingSettings = false
    
    private var formattedDate: String {
        Date.now.formatted(.dateTime.weekday(.wide).month(.wide).day()).uppercased()
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                    
                    // Editorial Focus: Today's Primary Action
                    if let focusStep = store.dailyFocusStep {
                        VStack(alignment: .leading, spacing: 12) {
                            // Eyebrow
                            Text(focusStep.stage.rawValue.uppercased())
                                .font(.system(.caption, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.accent)
                                .tracking(0.8)
                            
                            NavigationLink {
                                StepDetailView(stepId: focusStep.id)
                            } label: {
                                VStack(alignment: .leading, spacing: 10) {
                                    Text(focusStep.title)
                                        .font(.system(.title2, design: .default, weight: .bold))
                                        .foregroundStyle(Theme.Colors.primaryText)
                                        .multilineTextAlignment(.leading)
                                    
                                    Text(focusStep.shortSummary)
                                        .font(.system(.body, design: .default))
                                        .foregroundStyle(Theme.Colors.secondaryText)
                                        .lineSpacing(3)
                                        .multilineTextAlignment(.leading)
                                    
                                    HStack(spacing: 6) {
                                        Text("View Guidance")
                                            .font(.system(.subheadline, design: .default, weight: .semibold))
                                            .foregroundStyle(Theme.Colors.accent)
                                        Image(systemName: "chevron.right")
                                            .font(.system(size: 11, weight: .bold))
                                            .foregroundStyle(Theme.Colors.accent)
                                    }
                                    .padding(.top, 4)
                                }
                            }
                            .buttonStyle(.plain)
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 4)
                    }
                    
                    Divider()
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // Immediate Hotline
                    EmergencyHotlineBanner()
                    
                    Divider()
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // Saved Items (Progressive Disclosure)
                    VStack(alignment: .leading, spacing: 14) {
                        SectionHeader(
                            title: "Saved Resources",
                            subtitle: "Quick access to locations and services you have bookmarked"
                        )
                        
                        if store.savedResources.isEmpty {
                            Text("When you save shelters, meal programs, or legal clinics from the Resources tab, they will appear here.")
                                .font(.system(.subheadline, design: .default))
                                .foregroundStyle(Theme.Colors.secondaryText)
                                .lineSpacing(2)
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        } else {
                            VStack(spacing: 0) {
                                ForEach(store.savedResources) { resource in
                                    NavigationLink {
                                        ResourceDetailView(resource: resource)
                                    } label: {
                                        ResourceRow(
                                            resource: resource,
                                            isSaved: true,
                                            onToggleSave: {
                                                store.toggleResourceSaved(resourceId: resource.id)
                                            }
                                        )
                                    }
                                    .buttonStyle(.plain)
                                    
                                    if resource.id != store.savedResources.last?.id {
                                        Divider()
                                            .padding(.leading, 60)
                                    }
                                }
                            }
                            .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        }
                    }
                    
                    // Dignified Closing Thought
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Housing stability takes time and patience. You do not need to solve everything at once.")
                            .font(.system(.footnote, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .lineSpacing(3)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.bottom, Theme.Spacing.section)
                }
            }
            .navigationTitle("Today")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingSettings = true
                    } label: {
                        Image(systemName: "info.circle")
                            .font(.system(size: 17))
                            .foregroundStyle(Theme.Colors.primaryText)
                    }
                    .accessibilityLabel("About BridgeHome")
                }
            }
            .sheet(isPresented: $showingSettings) {
                SettingsView()
            }
        }
    }
}

#Preview {
    TodayView()
        .environment(HousingStore())
}
