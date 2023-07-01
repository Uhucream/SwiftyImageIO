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
        
        guard let unsignedAltitude = altitude else { return nil }
        
        var signedAltitude: Double {
            guard let altitudeRef else { return unsignedAltitude }
            
            return altitudeRef == .aboveSeaLevel ? unsignedAltitude : -unsignedAltitude
        }
        
        guard let imageDirection else { return nil }
        guard let speed else { return nil }
        
        var dateTime: Date? {
            guard let dateStamp else { return .distantPast }
            
            return DateFormatter.tiff.date(from: "\(dateStamp) \(timeStamp ?? "00:00:00")")
        }
        
        let location: CLLocation = .init(
            coordinate: CLLocationCoordinate2D(
                latitude: signedLatitude,
                longitude: signedLongitude
            ),
            altitude: signedAltitude,
            horizontalAccuracy: hPositioningError ?? clLocationDefaultAccuracyValue,
            verticalAccuracy: clLocationDefaultAccuracyValue,
            course: imageDirection,
            speed: speed,
            timestamp: dateTime ?? .distantPast
        )
        
        return location
    }
}
#endif
