import SwiftUI

/// A calm, dignified access point for 24/7 community assistance without alarmist styling.
struct EmergencyHotlineBanner: View {
    @Environment(\.openURL) private var openURL
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Need Emergency Shelter or Food?")
                    .font(.system(.title3, design: .default, weight: .bold))
                    .foregroundStyle(Theme.Colors.primaryText)
                
                Text("Call 2-1-1 for free, 24/7 confidential community dispatch to nearby shelters, warming centers, and daily meal sites.")
                    .font(.system(.body, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineSpacing(3)
            }
            
            HStack(spacing: 12) {
                Button {
                    if let url = URL(string: "tel:211") {
                        openURL(url)
                    }
                } label: {
                    HStack(spacing: 6) {
                        Image(systemName: "phone.fill")
                            .font(.system(size: 13))
                        Text("Call 2-1-1")
                            .font(.system(.subheadline, design: .default, weight: .semibold))
                    }
                    .foregroundStyle(Color(UIColor.systemBackground))
                    .padding(.horizontal, 18)
                    .padding(.vertical, 10)
                    .background(Theme.Colors.primaryText)
                    .clipShape(Capsule())
                }
                .accessibilityLabel("Call 2-1-1 helpline")
                .accessibilityHint("Connects directly to 24/7 emergency dispatch")
                
                Link(destination: URL(string: "https://www.211.org")!) {
                    Text("Visit 211.org")
                        .font(.system(.subheadline, design: .default, weight: .medium))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                        .background(Theme.Colors.secondaryBackground)
                        .clipShape(Capsule())
                }
                .accessibilityLabel("Visit 211 website")
            }
            .padding(.top, 2)
        }
        .padding(.horizontal, Theme.Spacing.screenHorizontal)
    }
}

#Preview {
    EmergencyHotlineBanner()
        .padding(.vertical)
}
