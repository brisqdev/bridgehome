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
                    
                    // Date & Editorial Eyebrow
                    VStack(alignment: .leading, spacing: 4) {
                        Text(formattedDate)
                            .font(.system(.footnote, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .tracking(0.5)
                        
                        Text("Today")
                            .font(.system(.largeTitle, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.top, 4)
                    
                    // Daily Focus: Exactly ONE attainable next step
                    if let focusStep = store.dailyFocusStep {
                        VStack(alignment: .leading, spacing: 12) {
                            SectionHeader(
                                title: "Next Step",
                                subtitle: "Focus on one manageable action at a time"
                            )
                            
                            NavigationLink {
                                StepDetailView(stepId: focusStep.id)
                            } label: {
                                VStack(alignment: .leading, spacing: 14) {
                                    HStack {
                                        Text(focusStep.stage.rawValue.uppercased())
                                            .font(.system(.caption, design: .default, weight: .semibold))
                                            .foregroundStyle(Theme.Colors.accent)
                                            .tracking(0.5)
                                        
                                        Spacer()
                                        
                                        if focusStep.isCompleted {
                                            Label("Completed", systemImage: "checkmark.circle.fill")
                                                .font(.system(.caption, design: .default, weight: .medium))
                                                .foregroundStyle(Theme.Colors.accent)
                                        }
                                    }
                                    
                                    Text(focusStep.title)
                                        .font(.system(.title3, design: .default, weight: .bold))
                                        .foregroundStyle(Theme.Colors.primaryText)
                                        .lineLimit(2)
                                        .multilineTextAlignment(.leading)
                                    
                                    Text(focusStep.shortSummary)
                                        .font(.system(.body, design: .default))
                                        .foregroundStyle(Theme.Colors.secondaryText)
                                        .lineLimit(3)
                                        .multilineTextAlignment(.leading)
                                    
                                    HStack {
                                        Text("View Guidance")
                                            .font(.system(.subheadline, design: .default, weight: .semibold))
                                            .foregroundStyle(Theme.Colors.accent)
                                        Image(systemName: "arrow.right")
                                            .font(.system(size: 12, weight: .semibold))
                                            .foregroundStyle(Theme.Colors.accent)
                                    }
                                    .padding(.top, 4)
                                }
                                .padding(20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Theme.Colors.secondaryBackground)
                                .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.card, style: .continuous))
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    
                    // Immediate Hotline
                    EmergencyHotlineBanner()
                    
                    // Saved Items (Progressive Disclosure)
                    VStack(alignment: .leading, spacing: 12) {
                        SectionHeader(
                            title: "Saved for Quick Access",
                            subtitle: "Direct access to contacts and places you trust"
                        )
                        
                        if store.savedResources.isEmpty {
                            Text("When you bookmark shelters, meal sites, or clinics in the Resources tab, they will appear here.")
                                .font(.system(.subheadline, design: .default))
                                .foregroundStyle(Theme.Colors.secondaryText)
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                                .padding(.vertical, 8)
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
                    
                    // Dignified Closing Thought / Reassurance
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Housing stability takes time and resilience. You do not need to solve everything today.")
                            .font(.system(.footnote, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .lineSpacing(3)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.bottom, Theme.Spacing.section)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingSettings = true
                    } label: {
                        Image(systemName: "info.circle")
                            .font(.system(size: 16))
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
