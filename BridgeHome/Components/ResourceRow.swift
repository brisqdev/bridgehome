import SwiftUI

/// A clean, uncrowded row representing a community support resource.
struct ResourceRow: View {
    let resource: Resource
    let isSaved: Bool
    var onToggleSave: (() -> Void)? = nil
    
    var body: some View {
        HStack(alignment: .top, spacing: Theme.Spacing.element) {
            // Category Icon in subtle muted circle
            ZStack {
                Circle()
                    .fill(Theme.Colors.calloutBackground)
                    .frame(width: 44, height: 44)
                
                Image(systemName: resource.category.iconName)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
            }
            .accessibilityHidden(true)
            
            // Text Content
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .top) {
                    Text(resource.name)
                        .font(.system(.body, design: .default, weight: .semibold))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                    
                    Spacer(minLength: 8)
                    
                    if let onToggleSave {
                        Button(action: onToggleSave) {
                            Image(systemName: isSaved ? "bookmark.fill" : "bookmark")
                                .font(.system(size: 16))
                                .foregroundStyle(isSaved ? Theme.Colors.primaryText : Theme.Colors.secondaryText)
                                .frame(width: 44, height: 44)
                                .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                        .accessibilityLabel(isSaved ? "Remove bookmark" : "Bookmark \(resource.name)")
                    }
                }
                
                Text(resource.address)
                    .font(.system(.subheadline, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineLimit(1)
                
                Text(resource.hours)
                    .font(.system(.caption, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineLimit(1)
            }
        }
        .padding(.vertical, 6)
        .contentShape(Rectangle())
    }
}

#Preview {
    VStack(spacing: 0) {
        ResourceRow(
            resource: Resource(
                id: "res_preview",
                name: "Downtown Housing Navigator Center",
                category: .shelter,
                address: "410 S. Main Street, Suite 100",
                phone: "(555) 329-8400",
                hours: "Monday – Friday: 8:00 AM – 4:30 PM",
                overview: "Walk-in resource hub",
                servicesOffered: ["Assessment", "Mail Service"],
                eligibility: "Anyone seeking housing assistance",
                whatToBring: ["ID if available"],
                isEmergencyHotline: false
            ),
            isSaved: true
        )
        Divider()
            .padding(.leading, 60)
        ResourceRow(
            resource: Resource(
                id: "res_211_preview",
                name: "2-1-1 Community Helpline",
                category: .shelter,
                address: "Available 24/7 Toll-Free Across All Counties",
                phone: "211",
                hours: "Open 24 hours / 7 days a week",
                overview: "Free emergency dispatch",
                servicesOffered: ["Shelter placement"],
                eligibility: "Open to all",
                whatToBring: [],
                isEmergencyHotline: true
            ),
            isSaved: false
        )
    }
    .padding()
}
