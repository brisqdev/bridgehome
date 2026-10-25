import Foundation
import CoreLocation

@Observable
final class LocationManager: NSObject, CLLocationManagerDelegate {
    private let manager = CLLocationManager()
    
    var userLocation: CLLocationCoordinate2D?
    var authorizationStatus: CLAuthorizationStatus = .notDetermined
    var isLocating: Bool = false
    
    // Default fallback coordinate (San Francisco Civic Center)
    static let defaultCoordinate = CLLocationCoordinate2D(latitude: 37.7793, longitude: -122.4193)
    
    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = 10
        authorizationStatus = manager.authorizationStatus
        
        if authorizationStatus == .authorizedWhenInUse || authorizationStatus == .authorizedAlways {
            if let coordinate = manager.location?.coordinate {
                self.userLocation = coordinate
            }
            manager.startUpdatingLocation()
        }
    }
    
    func requestAuthorizationAndLocation() {
        authorizationStatus = manager.authorizationStatus
        switch authorizationStatus {
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
        case .authorizedWhenInUse, .authorizedAlways:
            isLocating = true
            if let coordinate = manager.location?.coordinate {
                self.userLocation = coordinate
            }
            manager.startUpdatingLocation()
        default:
            isLocating = false
        }
    }
    
    func refreshLocation() {
        isLocating = true
        if let coordinate = manager.location?.coordinate {
            self.userLocation = coordinate
        }
        manager.startUpdatingLocation()
    }
    
    // MARK: - CLLocationManagerDelegate
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        authorizationStatus = manager.authorizationStatus
        if authorizationStatus == .authorizedWhenInUse || authorizationStatus == .authorizedAlways {
            isLocating = true
            if let coordinate = manager.location?.coordinate {
                self.userLocation = coordinate
            }
            manager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        isLocating = false
        if let location = locations.last {
            self.userLocation = location.coordinate
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        isLocating = false
    }
}
