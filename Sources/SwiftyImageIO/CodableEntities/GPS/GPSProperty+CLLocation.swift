//
//  GPSProperty+CLLocation.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/02
//  
//

#if canImport(CoreLocation)
import CoreLocation

public extension GPSProperty {
    /// An instance of CLLocation generated from GPSProperty coordinate values.
    var clLocation: CLLocation? {
        let clLocationDefaultAccuracyValue: Double = -1
        
        guard let unsignedLatitude = latitude else { return nil }
        guard let unsignedLongitude = longitude else { return nil }
        
        var signedLatitude: Double {
            guard let latitudeRef else { return unsignedLatitude }
            
            return latitudeRef == .north ? unsignedLatitude : -unsignedLatitude
        }
        
        var signedLongitude: Double {
            guard let longitudeRef else { return unsignedLongitude }
            
            return longitudeRef == .east ? unsignedLongitude : -unsignedLongitude
        }
        
        guard let unsignedAltitude = altitude else {
            return .init(
                latitude: signedLatitude,
                longitude: signedLongitude
            )
        }
        
        var signedAltitude: Double {
            guard let altitudeRef else { return unsignedAltitude }
            
            return altitudeRef == .aboveSeaLevel ? unsignedAltitude : -unsignedAltitude
        }
        
        var dateTime: Date? {
            guard let dateStamp else { return .distantPast }
            
            return DateFormatter.tiff.date(from: "\(dateStamp) \(timeStamp ?? "00:00:00")")
        }
        
        guard let imageDirection else {
            let location: CLLocation = .init(
                coordinate: CLLocationCoordinate2D(
                    latitude: signedLatitude,
                    longitude: signedLongitude
                ),
                altitude: signedAltitude,
                horizontalAccuracy: hPositioningError ?? clLocationDefaultAccuracyValue,
                verticalAccuracy: clLocationDefaultAccuracyValue,
                timestamp: dateTime ?? .distantPast
            )
            
            return location
        }
        
        guard let speed, let speedRef else {
            let location: CLLocation = .init(
                coordinate: CLLocationCoordinate2D(
                    latitude: signedLatitude,
                    longitude: signedLongitude
                ),
                altitude: signedAltitude,
                horizontalAccuracy: hPositioningError ?? clLocationDefaultAccuracyValue,
                verticalAccuracy: clLocationDefaultAccuracyValue,
                course: imageDirection,
                speed: 0,
                timestamp: dateTime ?? .distantPast
            )
            
            return location
        }
        
        var measurementSpeedUnit: UnitSpeed {
            switch speedRef {
            case .kilometerPerHour:
                return .kilometersPerHour
            case .knots:
                return .knots
            case .milePerHour:
                return .milesPerHour
            }
        }
        
        let measurementSpeed: Measurement<UnitSpeed> = .init(
            value: speed,
            unit: measurementSpeedUnit
        )
        
        let metersPerSecondSpeed: Measurement<UnitSpeed> = measurementSpeed.converted(to: .metersPerSecond)
        
        let location: CLLocation = .init(
            coordinate: CLLocationCoordinate2D(
                latitude: signedLatitude,
                longitude: signedLongitude
            ),
            altitude: signedAltitude,
            horizontalAccuracy: hPositioningError ?? clLocationDefaultAccuracyValue,
            verticalAccuracy: clLocationDefaultAccuracyValue,
            course: imageDirection,
            speed: metersPerSecondSpeed.value,
            timestamp: dateTime ?? .distantPast
        )
        
        return location
    }
}
#endif
