import SwiftUI

struct StageDetailView: View {
    @Environment(HousingStore.self) private var store
    let stage: GuideStage
    
    var body: some View {
        let steps = store.steps(for: stage)
        
        ScrollView {
            VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                // Header
                VStack(alignment: .leading, spacing: 6) {
                    Text("STAGE \(stage.order)")
                        .font(.system(.caption, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.accent)
                        .tracking(0.8)
                    
                    Text(stage.rawValue)
                        .font(.system(.largeTitle, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                    
                    Text(stage.subtitle)
                        .font(.system(.body, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                        .lineSpacing(3)
                }
                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                .padding(.top, 4)
                
                // Steps List
                VStack(spacing: 0) {
                    ForEach(steps) { step in
                        NavigationLink {
                            StepDetailView(stepId: step.id)
                        } label: {
                            StepRow(
                                step: step,
                                onToggleCompleted: {
                                    store.toggleStepCompletion(stepId: step.id)
                                }
                            )
                        }
                        .buttonStyle(.plain)
                        
                        if step.id != steps.last?.id {
                            Divider()
                                .padding(.leading, 56)
                        }
                    }
                }
                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                .padding(.bottom, Theme.Spacing.section)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        StageDetailView(stage: .immediateSafety)
            .environment(HousingStore())
    }
}
