import SwiftUI

/// An understated callout container for rights, notices, and scam alerts.
struct CalloutBox: View {
    let icon: String
    let title: String
    let message: String
    
    var body: some View {
        HStack(alignment: .top, spacing: Theme.Spacing.element) {
            Image(systemName: icon)
                .font(.system(size: 18))
                .foregroundStyle(Theme.Colors.primaryText)
                .padding(.top, 2)
                .accessibilityHidden(true)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(.subheadline, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
                
                Text(message)
                    .font(.system(.subheadline, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineSpacing(3)
            }
        }
        .padding(Theme.Spacing.element)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Theme.Colors.secondaryBackground)
        .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.card, style: .continuous))
    }
}

#Preview {
    CalloutBox(
        icon: "shield.lefthalf.filled",
        title: "Rights & Guidance",
        message: "You have the right to a safe environment free from harassment. If you feel unsafe, you can request an alternate placement."
    )
    .padding()
}
