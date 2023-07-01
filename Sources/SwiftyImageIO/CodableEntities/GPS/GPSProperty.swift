//
//  GPSProperty.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import AnyCodable
import Foundation

/// Global Positioning System (GPS) information.
public struct GPSProperty: Codable, Equatable, Hashable {
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
}
