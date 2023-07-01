//
//  GPSProperty+AltitudeRef.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum AltitudeRef: UInt8, Codable {
        case aboveSeaLevel = 0
        case belowSeaLevel = 1
    }
}
