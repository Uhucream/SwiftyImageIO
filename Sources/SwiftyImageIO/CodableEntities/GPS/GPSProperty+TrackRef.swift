//
//  GPSProperty+TrackRef.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum TrackRef: String, Codable, Sendable {
        case magneticNorth = "M"
        case trueNorth = "T"
    }
}
