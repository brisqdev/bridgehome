import SwiftUI

struct GuideView: View {
    @Environment(HousingStore.self) private var store
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                    
                    // Editorial Header
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Housing Guide")
                            .font(.system(.largeTitle, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                        
                        Text("Clear, step-by-step guidance to navigate the transition into permanent, stable housing.")
                            .font(.system(.body, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .lineSpacing(2)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.top, 4)
                    
                    // Stages List
                    VStack(spacing: 16) {
                        ForEach(GuideStage.allCases) { stage in
                            NavigationLink {
                                StageDetailView(stage: stage)
                            } label: {
                                StageCard(stage: stage)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // Reassuring Note
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Every housing journey follows its own timeline. You can review these stages in any order that best fits your present circumstances.")
                            .font(.system(.footnote, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .lineSpacing(3)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.bottom, Theme.Spacing.section)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

private struct StageCard: View {
    @Environment(HousingStore.self) private var store
    let stage: GuideStage
    
    var body: some View {
        let steps = store.steps(for: stage)
        let completed = store.completedStepsCount(for: stage)
        
        VStack(alignment: .leading, spacing: 14) {
            HStack(alignment: .top) {
                ZStack {
                    Circle()
                        .fill(Theme.Colors.calloutBackground)
                        .frame(width: 44, height: 44)
                    
                    Image(systemName: stage.iconName)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(Theme.Colors.accent)
                }
                
                Spacer()
                
                Text("Stage \(stage.order)")
                    .font(.system(.caption, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.secondaryText)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(stage.rawValue)
                    .font(.system(.title3, design: .default, weight: .bold))
                    .foregroundStyle(Theme.Colors.primaryText)
                
                Text(stage.subtitle)
                    .font(.system(.subheadline, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
            
            HStack {
                Text("\(steps.count) steps")
                    .font(.system(.footnote, design: .default, weight: .medium))
                    .foregroundStyle(Theme.Colors.secondaryText)
                
                if completed > 0 {
                    Text("•")
                        .foregroundStyle(Theme.Colors.secondaryText)
                    Text("\(completed) completed")
                        .font(.system(.footnote, design: .default, weight: .medium))
                        .foregroundStyle(Theme.Colors.accent)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(Theme.Colors.secondaryText.opacity(0.6))
            }
            .padding(.top, 4)
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Theme.Colors.secondaryBackground)
        .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.card, style: .continuous))
    }
}
