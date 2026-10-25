import SwiftUI

/// BridgeHome visual theme:
/// Minimalist, high-contrast, black and white basic UI style.
/// Understated, polished, familiar, and effortless to navigate.
enum Theme {
    // MARK: - Spacing Tokens
    enum Spacing {
        static let screenHorizontal: CGFloat = 16
        static let section: CGFloat = 24
        static let element: CGFloat = 14
        static let row: CGFloat = 12
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
        /// Monochromatic high-contrast accent (Black in Light Mode, White in Dark Mode)
        static let accent = Color.accentColor
        
        /// Crisp black / white primary text
        static let primaryText = Color.primary
        
        /// Muted secondary text
        static let secondaryText = Color.secondary
        
        /// Subtle separator line
        static let separator = Color(UIColor.separator)
        
        /// Default screen canvas
        static let background = Color(UIColor.systemBackground)
        
        /// Clean neutral card surface (#F4F4F4 in light, #1C1C1E in dark)
        static let cardBackground = Color(UIColor.secondarySystemBackground)
        
        /// Aliases for backward compatibility
        static let secondaryBackground = Color(UIColor.secondarySystemBackground)
        static let calloutBackground = Color(UIColor.tertiarySystemFill)
        
        /// Elevated surface
        static let elevatedBackground = Color(UIColor.tertiarySystemBackground)
        
        /// Soft pill background
        static let pillBackground = Color(UIColor.secondarySystemBackground)
    }
}
