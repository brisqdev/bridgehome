import Foundation
import CoreLocation

/// Defines the supported coverage zone for BridgeHome:
/// Bergen County, Passaic County, and surrounding areas in NJ and NY.
struct SupportedRegion {
    static let name = "Bergen County, Passaic County & Surrounding NJ/NY"
    
    // Geographic Center of Bergen & Passaic County (Hackensack/Paterson corridor)
    static let center = CLLocationCoordinate2D(latitude: 40.8938, longitude: -74.0760)
    
    // Bounding Box encompassing Bergen County, Passaic County,
    // and surrounding NJ (Hudson, Essex, Morris) and NY (Rockland, Westchester, NYC)
    static let minLatitude: Double = 40.50
    static let maxLatitude: Double = 41.35
    static let minLongitude: Double = -74.55
    static let maxLongitude: Double = -73.65
    
    /// Determines whether the given coordinate falls within the supported service area.
    static func contains(coordinate: CLLocationCoordinate2D) -> Bool {
        return coordinate.latitude >= minLatitude &&
               coordinate.latitude <= maxLatitude &&
               coordinate.longitude >= minLongitude &&
               coordinate.longitude <= maxLongitude
    }
}
