import SwiftUI

enum Theme {
    // MARK: - Spacing Tokens
    enum Spacing {
        static let screenHorizontal: CGFloat = 20
        static let section: CGFloat = 24
        static let element: CGFloat = 16
        static let row: CGFloat = 14
        static let compact: CGFloat = 8
        static let tight: CGFloat = 4
    }
    
    // MARK: - Corner Radii
    enum Radius {
        static let small: CGFloat = 8
        static let standard: CGFloat = 12
        static let card: CGFloat = 16
        static let pill: CGFloat = 24
    }
    
    // MARK: - Colors
    enum Colors {
        /// The rich rose-crimson accent color from the very first iteration
        static let accent = Color.accentColor
        
        /// Crisp primary text
        static let primaryText = Color.primary
        
        /// Muted secondary text
        static let secondaryText = Color.secondary
        
        /// Subtle separator line
        static let separator = Color(UIColor.separator)
        
        /// Default screen canvas
        static let background = Color(UIColor.systemBackground)
        
        /// Card surface
        static let cardBackground = Color(UIColor.secondarySystemBackground)
        
        /// Secondary background
        static let secondaryBackground = Color(UIColor.secondarySystemBackground)
        
        /// Soft crimson callout background
        static let calloutBackground = Color.accentColor.opacity(0.12)
        
        /// Elevated surface
        static let elevatedBackground = Color(UIColor.tertiarySystemBackground)
    }
}
