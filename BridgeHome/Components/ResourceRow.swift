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
                    .foregroundStyle(resource.isEmergencyHotline ? Theme.Colors.accent : Theme.Colors.primaryText)
            }
            .accessibilityHidden(true)
            
            // Text Content
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .top) {
                    Text(resource.name)
                        .font(.system(.body, design: .default, weight: .semibold))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .lineLimit(2)
                    
                    Spacer(minLength: 8)
                    
                    if let onToggleSave {
                        Button(action: onToggleSave) {
                            Image(systemName: isSaved ? "bookmark.fill" : "bookmark")
                                .font(.system(size: 16))
                                .foregroundStyle(isSaved ? Theme.Colors.accent : Theme.Colors.secondaryText)
                                .frame(width: 32, height: 32)
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
        .padding(.vertical, Theme.Spacing.compact)
        .contentShape(Rectangle())
    }
}
