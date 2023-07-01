//
//  GPSProperty+CodingKeys.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation
import ImageIO

extension GPSProperty {
    enum CodingKeys: String, CodingKey {
        case latitude
        case longitude
        case altitude
        case latitudeRef
        case longitudeRef
        case altitudeRef
        case hPositioningError
        
        case destinationLatitude
        case destinationLongitude
        case destinationBearing
        case destinationDistance
        case destinationLatitudeRef
        case destinationLongitudeRef
        case destinationBearingRef
        case destinationDistanceRef
        case imageDirectionRef
        case imageDirection
        
        case status
        case satellites
        case measureMode
        
        case dop
        case speedRef
        case speed
        case trackRef
        case track
        case mapDatum
        case processingMethod
        case areaInformation
        case differential
        case timeStamp
        case gpsVersion
        case dateStamp
        
        var rawValue: String {
            return self.rawValueCFString as String
        }
        
        private var rawValueCFString: CFString {
            switch self {
            case .latitude:
                return kCGImagePropertyGPSLatitude
            case .longitude:
                return kCGImagePropertyGPSLongitude
            case .altitude:
                return kCGImagePropertyGPSAltitude
            case .latitudeRef:
                return kCGImagePropertyGPSLatitudeRef
            case .longitudeRef:
                return kCGImagePropertyGPSLongitudeRef
            case .altitudeRef:
                return kCGImagePropertyGPSAltitudeRef
            case .hPositioningError:
                return kCGImagePropertyGPSHPositioningError
                
            case .destinationLatitude:
                return kCGImagePropertyGPSDestLatitude
            case .destinationLongitude:
                return kCGImagePropertyGPSDestLongitude
            case .destinationBearing:
                return kCGImagePropertyGPSDestBearing
            case .destinationDistance:
                return kCGImagePropertyGPSDestDistance
            case .destinationLatitudeRef:
                return kCGImagePropertyGPSDestLatitudeRef
            case .destinationLongitudeRef:
                return kCGImagePropertyGPSDestLongitudeRef
            case .destinationBearingRef:
                return kCGImagePropertyGPSDestBearingRef
            case .destinationDistanceRef:
                return kCGImagePropertyGPSDestDistanceRef
            case .imageDirectionRef:
                return kCGImagePropertyGPSImgDirectionRef
            case .imageDirection:
                return kCGImagePropertyGPSImgDirection
                
            case .status:
                return kCGImagePropertyGPSStatus
            case .satellites:
                return kCGImagePropertyGPSSatellites
            case .measureMode:
                return kCGImagePropertyGPSMeasureMode
                
            case .dop:
                return kCGImagePropertyGPSDOP
            case .speedRef:
                return kCGImagePropertyGPSSpeedRef
            case .speed:
                return kCGImagePropertyGPSSpeed
            case .trackRef:
                return kCGImagePropertyGPSTrackRef
            case .track:
                return kCGImagePropertyGPSTrack
            case .mapDatum:
                return kCGImagePropertyGPSMapDatum
            case .processingMethod:
                return kCGImagePropertyGPSProcessingMethod
            case .areaInformation:
                return kCGImagePropertyGPSAreaInformation
            case .differential:
                return kCGImagePropertyGPSDifferental
            case .timeStamp:
                return kCGImagePropertyGPSTimeStamp
            case .dateStamp:
                return kCGImagePropertyGPSDateStamp

            case .gpsVersion:
                return kCGImagePropertyGPSVersion
            }
        }
    }
}
