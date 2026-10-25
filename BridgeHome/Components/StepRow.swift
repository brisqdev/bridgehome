import SwiftUI

/// A quiet, well-proportioned row representing a step in the housing stabilization guide.
struct StepRow: View {
    let step: GuideStep
    var onToggleCompleted: (() -> Void)? = nil
    
    var body: some View {
        HStack(alignment: .top, spacing: Theme.Spacing.element) {
            // Status checkmark / step indicator with comfortable 44pt touch target
            Button {
                onToggleCompleted?()
            } label: {
                ZStack {
                    Circle()
                        .strokeBorder(step.isCompleted ? Theme.Colors.accent : Theme.Colors.secondaryText.opacity(0.4), lineWidth: 1.5)
                        .frame(width: 26, height: 26)
                    
                    if step.isCompleted {
                        Circle()
                            .fill(Theme.Colors.accent)
                            .frame(width: 26, height: 26)
                        
                        Image(systemName: "checkmark")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundStyle(.white)
                    } else {
                        Text("\(step.order)")
                            .font(.system(.footnote, design: .default, weight: .medium))
                            .foregroundStyle(Theme.Colors.secondaryText)
                    }
                }
                .frame(width: 44, height: 44)
                .contentShape(Rectangle())
            }
            .buttonStyle(.plain)
            .accessibilityLabel(step.isCompleted ? "Mark incomplete" : "Mark completed")
            .accessibilityHint("Toggles completion of this milestone")
            
            // Text Details
            VStack(alignment: .leading, spacing: 4) {
                Text(step.title)
                    .font(.system(.body, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
                    .strikethrough(step.isCompleted, color: Theme.Colors.secondaryText)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
                Text(step.shortSummary)
                    .font(.system(.subheadline, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
            .padding(.top, 4)
            
            Spacer(minLength: 8)
            
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(Theme.Colors.secondaryText.opacity(0.4))
                .padding(.top, 8)
        }
        .padding(.vertical, 4)
        .contentShape(Rectangle())
    }
}

#Preview {
    VStack(spacing: 0) {
        StepRow(
            step: GuideStep(
                id: "sample_1",
                stage: .immediateSafety,
                order: 1,
                title: "Confirm Safe Shelter for Tonight",
                shortSummary: "Find an emergency intake, safe parking lot, or family room before nightfall.",
                detail: "Details here"
            )
        )
        Divider()
        StepRow(
            step: GuideStep(
                id: "sample_2",
                stage: .immediateSafety,
                order: 2,
                title: "Protect Vital Belongings & Medication",
                shortSummary: "Safeguard your prescription medications, phone, and identity documents.",
                detail: "Details here",
                isCompleted: true
            )
        )
    }
    .padding()
}
