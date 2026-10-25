import SwiftUI

/// BridgeHome visual theme, inspired by Apple Music's understated elegance,
/// typography-first hierarchy, and mandatory whitespace.
enum Theme {
    // MARK: - Spacing Tokens
    enum Spacing {
        /// Generous padding from the screen edges (Apple Music standard: 20pt)
        static let screenHorizontal: CGFloat = 20
        
        /// Generous space between unrelated sections
        static let section: CGFloat = 28
        
        /// Standard gap between elements within a section
        static let element: CGFloat = 16
        
        /// Separation between list rows
        static let row: CGFloat = 14
        
        /// Small spacing for metadata, captions, and tags
        static let compact: CGFloat = 8
        
        /// Tight grouping for badges and icons
        static let tight: CGFloat = 4
    }
    
    // MARK: - Corner Radii
    enum Radius {
        static let small: CGFloat = 8
        static let standard: CGFloat = 12
        static let card: CGFloat = 14
        static let pill: CGFloat = 20
    }
    
    // MARK: - Colors
    enum Colors {
        /// The single restrained accent color (Apple Music rose-crimson)
        static let accent = Color.accentColor
        
        /// High contrast primary text
        static let primaryText = Color.primary
        
        /// Muted secondary text for descriptions and metadata
        static let secondaryText = Color.secondary
        
        /// Subtle separator line
        static let separator = Color(UIColor.separator)
        
        /// Default screen canvas
        static let background = Color(UIColor.systemBackground)
        
        /// Elevated grouped background for lists and panels
        static let secondaryBackground = Color(UIColor.secondarySystemBackground)
        
        /// Card surface
        static let cardBackground = Color(UIColor.secondarySystemGroupedBackground)
        
        /// Soft alert / notice background
        static let calloutBackground = Color(UIColor.tertiarySystemFill)
    }
}
