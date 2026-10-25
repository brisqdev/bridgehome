import SwiftUI

/// A quiet, well-proportioned row representing a step in the housing stabilization guide.
struct StepRow: View {
    let step: GuideStep
    var onToggleCompleted: (() -> Void)? = nil
    
    var body: some View {
        HStack(alignment: .top, spacing: Theme.Spacing.element) {
            // Status checkmark / step indicator
            Button {
                onToggleCompleted?()
            } label: {
                ZStack {
                    Circle()
                        .strokeBorder(step.isCompleted ? Theme.Colors.accent : Theme.Colors.secondaryText.opacity(0.4), lineWidth: 1.5)
                        .frame(width: 28, height: 28)
                    
                    if step.isCompleted {
                        Circle()
                            .fill(Theme.Colors.accent)
                            .frame(width: 28, height: 28)
                        
                        Image(systemName: "checkmark")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundStyle(.white)
                    } else {
                        Text("\(step.order)")
                            .font(.system(.footnote, design: .default, weight: .medium))
                            .foregroundStyle(Theme.Colors.secondaryText)
                    }
                }
            }
            .buttonStyle(.plain)
            .accessibilityLabel(step.isCompleted ? "Mark incomplete" : "Mark completed")
            
            // Text Details
            VStack(alignment: .leading, spacing: 4) {
                Text(step.title)
                    .font(.system(.body, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
                    .strikethrough(step.isCompleted, color: Theme.Colors.secondaryText)
                
                Text(step.shortSummary)
                    .font(.system(.subheadline, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineLimit(2)
            }
            
            Spacer(minLength: 8)
            
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(Theme.Colors.secondaryText.opacity(0.5))
                .padding(.top, 4)
        }
        .padding(.vertical, Theme.Spacing.compact)
        .contentShape(Rectangle())
    }
}
