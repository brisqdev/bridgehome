import SwiftUI

/// Apple Music style editorial section title with generous whitespace and clear hierarchy.
struct SectionHeader: View {
    let title: String
    var subtitle: String? = nil
    var actionTitle: String? = nil
    var action: (() -> Void)? = nil
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(alignment: .firstTextBaseline) {
                Text(title)
                    .font(.system(.title2, design: .default, weight: .bold))
                    .foregroundStyle(Theme.Colors.primaryText)
                
                Spacer()
                
                if let actionTitle, let action {
                    Button(action: action) {
                        Text(actionTitle)
                            .font(.system(.subheadline, design: .default, weight: .semibold))
                            .foregroundStyle(Theme.Colors.accent)
                    }
                }
            }
            
            if let subtitle {
                Text(subtitle)
                    .font(.system(.subheadline, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineSpacing(2)
            }
        }
        .padding(.horizontal, Theme.Spacing.screenHorizontal)
    }
}

#Preview {
    SectionHeader(
        title: "Application Documents",
        subtitle: "Select any item to review how to obtain it or record notes",
        actionTitle: "Add Contact",
        action: {}
    )
}
