import SwiftUI

/// A calm, dignified banner offering immediate 24/7 hotline assistance without alarmist styling.
struct EmergencyHotlineBanner: View {
    @Environment(\.openURL) private var openURL
    
    var body: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.element) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Need Immediate Shelter or Food?")
                    .font(.system(.headline, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
                
                Text("Dial 2-1-1 for free, 24/7 confidential community dispatch to nearby emergency shelters, warming centers, and meal sites.")
                    .font(.system(.subheadline, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineSpacing(2)
            }
            
            HStack(spacing: Theme.Spacing.element) {
                Button {
                    if let url = URL(string: "tel:211") {
                        openURL(url)
                    }
                } label: {
                    HStack(spacing: 6) {
                        Image(systemName: "phone.fill")
                            .font(.system(size: 14))
                        Text("Call 2-1-1")
                            .font(.system(.subheadline, design: .default, weight: .semibold))
                    }
                    .foregroundStyle(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .background(Theme.Colors.accent)
                    .clipShape(Capsule())
                }
                
                Link(destination: URL(string: "https://www.211.org")!) {
                    Text("Visit 211.org")
                        .font(.system(.subheadline, design: .default, weight: .medium))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .padding(.horizontal, 14)
                        .padding(.vertical, 10)
                        .background(Theme.Colors.secondaryBackground)
                        .clipShape(Capsule())
                }
            }
        }
        .padding(Theme.Spacing.element)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Theme.Colors.secondaryBackground)
        .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.card, style: .continuous))
        .padding(.horizontal, Theme.Spacing.screenHorizontal)
    }
}
