//
//  GPSProperty+LongitudeRef.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum LongitudeRef: String, Codable, Sendable {
        case east = "E"
        case west = "W"
    }
}
