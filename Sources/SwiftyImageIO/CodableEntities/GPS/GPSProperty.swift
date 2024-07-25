//
//  GPSProperty.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

@preconcurrency import AnyCodable
import Foundation
import ImageIO

/// Global Positioning System (GPS) information.
public struct GPSProperty: Codable, Equatable, Hashable, Sendable {
    //  MARK: - GPS Coordinate
    
    /// The latitude.
    public var latitude: Double?
    
    /// The longitude.
    public var longitude: Double?
    
    /// The altitude.
    public var altitude: Double?
    
    /// An indication of whether the latitude is north or south.
    public var latitudeRef: LatitudeRef?
    
    /// An indication of whether the longitude is east or west.
    public var longitudeRef: LongitudeRef?
    
    /// The altitude point of reference.
    public var altitudeRef: AltitudeRef?
    
    /// The horizontal error in the GPS position.
    public var hPositioningError: Double?
    
    //  MARK: - Destinations
    
    /// The latitude of the destination point.
    public var destinationLatitude: Double?
    
    /// The longitude of the destination point.
    public var destinationLongitude: Double?
    
    /// The bearing to the destination point.
    public var destinationBearing: Double?
    
    /// The distance to the destination point.
    public var destinationDistance: Double?
    
    /// An indication of whether the latitude of the destination point is northern or southern.
    public var destinationLatitudeRef: LatitudeRef?
    
    /// An indication of whether the longitude of the destination point is east or west.
    public var destinationLongitudeRef: LongitudeRef?
    
    /// The reference for giving the bearing to the destination point.
    public var destinationBearingRef: BearingRef?
    
    /// The units for expressing the distance to the destination point.
    public var destinationDistanceRef: DistanceLengthUnit?
    
    //  MARK: - Image Orientation
    
    /// The reference for the direction of the image.
    public var imageDirectionRef: DirectionRef?
    
    /// The direction of the image.
    public var imageDirection: Double?
    
    //  MARK: - Measurement Details
    
    /// The status of the GPS receiver.
    public var status: Status?
    
    /// The satellites used for GPS measurements.
    public var satellites: String?
    
    /// The measurement mode.
    public var measureMode: MeasureMode?
    
    /// The degree of precision (DOP) of the data.
    public var dop: Double?
    
    /// The unit for expressing the GPS receiver’s speed of movement.
    public var speedRef: SpeedUnit?
    
    /// The GPS receiver’s speed of movement.
    public var speed: Double?
    
    /// The reference for the direction of GPS receiver’s movement.
    public var trackRef: TrackRef?
    
    /// The direction of GPS receiver’s movement.
    public var track: Double?
    
    /// The geodetic survey data used by the GPS receiver.
    public var mapDatum: String?
    
    /// The name of the method used to find a location.
    public var processingMethod: AnyCodable?
    
    /// The name of the GPS area.
    public var areaInformation: AnyCodable?
    
    /// An indication of whether differential correction is applied to the GPS receiver.
    public var differential: Differential?
    
    //  MARK: - Timestamp Information
    
    /// The time in UTC (Coordinated Universal Time).
    public var timeStamp: String?
    
    /// The date and time information relative to Coordinated Universal Time (UTC).
    public var dateStamp: String?
    
    //  MARK: - GPS Version
    
    /// The GPS version information.
    public var gpsVersion: AnyCodable?
    
    init?(dictionary: Any?) {
        guard let dictionary = dictionary as? [String : Any] else { return nil }
        
        self.latitude = dictionary[kCGImagePropertyGPSLatitude as String] as? Double
        self.longitude = dictionary[kCGImagePropertyGPSLongitude as String] as? Double
        self.altitude = dictionary[kCGImagePropertyGPSAltitude as String] as? Double
        self.latitudeRef = dictionary[kCGImagePropertyGPSLatitudeRef as String] as? LatitudeRef
        self.longitudeRef = dictionary[kCGImagePropertyGPSLongitudeRef as String] as? LongitudeRef
        self.altitudeRef = dictionary[kCGImagePropertyGPSAltitudeRef as String] as? AltitudeRef
        self.hPositioningError = dictionary[kCGImagePropertyGPSHPositioningError as String] as? Double
        self.destinationLatitude = dictionary[kCGImagePropertyGPSDestLatitude as String] as? Double
        self.destinationLongitude = dictionary[kCGImagePropertyGPSDestLongitude as String] as? Double
        self.destinationBearing = dictionary[kCGImagePropertyGPSDestBearing as String] as? Double
        self.destinationDistance = dictionary[kCGImagePropertyGPSDestDistance as String] as? Double
        self.destinationLatitudeRef = dictionary[kCGImagePropertyGPSDestLatitudeRef as String] as? LatitudeRef
        self.destinationLongitudeRef = dictionary[kCGImagePropertyGPSDestLongitudeRef as String] as? LongitudeRef
        self.destinationBearingRef = dictionary[kCGImagePropertyGPSDestBearingRef as String] as? BearingRef
        self.destinationDistanceRef = dictionary[kCGImagePropertyGPSDestDistanceRef as String] as? DistanceLengthUnit
        self.imageDirectionRef = dictionary[kCGImagePropertyGPSImgDirectionRef as String] as? DirectionRef
        self.imageDirection = dictionary[kCGImagePropertyGPSImgDirection as String] as? Double
        self.status = dictionary[kCGImagePropertyGPSStatus as String] as? Status
        self.satellites = dictionary[kCGImagePropertyGPSSatellites as String] as? String
        self.measureMode = dictionary[kCGImagePropertyGPSMeasureMode as String] as? MeasureMode
        self.dop = dictionary[kCGImagePropertyGPSDOP as String] as? Double
        self.speedRef = dictionary[kCGImagePropertyGPSSpeedRef as String] as? SpeedUnit
        self.speed = dictionary[kCGImagePropertyGPSSpeed as String] as? Double
        self.trackRef = dictionary[kCGImagePropertyGPSTrackRef as String] as? TrackRef
        self.track = dictionary[kCGImagePropertyGPSTrack as String] as? Double
        self.mapDatum = dictionary[kCGImagePropertyGPSMapDatum as String] as? String
        self.processingMethod = dictionary[kCGImagePropertyGPSProcessingMethod as String] as? AnyCodable
        self.areaInformation = dictionary[kCGImagePropertyGPSAreaInformation as String] as? AnyCodable
        self.differential = dictionary[kCGImagePropertyGPSDifferental as String] as? Differential
        self.timeStamp = dictionary[kCGImagePropertyGPSTimeStamp as String] as? String
        self.dateStamp = dictionary[kCGImagePropertyGPSDateStamp as String] as? String
        self.gpsVersion = dictionary[kCGImagePropertyGPSVersion as String] as? AnyCodable
    }
}
