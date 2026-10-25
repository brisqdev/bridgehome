import SwiftUI

struct GuideView: View {
    @Environment(HousingStore.self) private var store
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                    
                    // Editorial Subtitle
                    Text("A step-by-step path from immediate stability to long-term housing.")
                        .font(.system(.body, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                        .lineSpacing(3)
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 2)
                    
                    // Stages List (Spacious editorial rows, no card clutter)
                    VStack(spacing: 0) {
                        ForEach(GuideStage.allCases) { stage in
                            NavigationLink {
                                StageDetailView(stage: stage)
                            } label: {
                                StageRow(stage: stage)
                            }
                            .buttonStyle(.plain)
                            
                            if stage != GuideStage.allCases.last {
                                Divider()
                                    .padding(.leading, 64)
                                    .padding(.trailing, Theme.Spacing.screenHorizontal)
                            }
                        }
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // Reassuring Note
                    VStack(alignment: .leading, spacing: 6) {
                        Text("You can review these steps in any order. Take the time you need for each stage.")
                            .font(.system(.footnote, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .lineSpacing(3)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.bottom, Theme.Spacing.section)
                }
            }
            .navigationTitle("Guide")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

private struct StageRow: View {
    @Environment(HousingStore.self) private var store
    let stage: GuideStage
    
    var body: some View {
        let steps = store.steps(for: stage)
        let completed = store.completedStepsCount(for: stage)
        
        HStack(alignment: .top, spacing: Theme.Spacing.element) {
            // Icon
            ZStack {
                Circle()
                    .fill(Theme.Colors.calloutBackground)
                    .frame(width: 48, height: 48)
                
                Image(systemName: stage.iconName)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(Theme.Colors.accent)
            }
            .accessibilityHidden(true)
            
            // Text Content
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .firstTextBaseline) {
                    Text(stage.rawValue)
                        .font(.system(.title3, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                    
                    Spacer()
                    
                    Text("Stage \(stage.order)")
                        .font(.system(.caption, design: .default, weight: .semibold))
                        .foregroundStyle(Theme.Colors.secondaryText)
                }
                
                Text(stage.subtitle)
                    .font(.system(.subheadline, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineSpacing(2)
                    .multilineTextAlignment(.leading)
                
                HStack(spacing: 6) {
                    Text("\(steps.count) steps")
                        .font(.system(.caption, design: .default, weight: .medium))
                        .foregroundStyle(Theme.Colors.secondaryText)
                    
                    if completed > 0 {
                        Text("•")
                            .foregroundStyle(Theme.Colors.secondaryText)
                        Text("\(completed) completed")
                            .font(.system(.caption, design: .default, weight: .medium))
                            .foregroundStyle(Theme.Colors.accent)
                    }
                }
                .padding(.top, 2)
            }
            
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(Theme.Colors.secondaryText.opacity(0.4))
                .padding(.top, 14)
        }
        .padding(.vertical, 16)
        .contentShape(Rectangle())
    }
}

#Preview {
    GuideView()
        .environment(HousingStore())
}
