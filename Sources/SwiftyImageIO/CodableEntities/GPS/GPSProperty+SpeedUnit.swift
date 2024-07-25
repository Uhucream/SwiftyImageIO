//
//  GPSProperty+SpeedUnit.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum SpeedUnit: String, Codable, Sendable {
        case kilometerPerHour = "K"
        case milePerHour = "M"
        case knots = "N"
    }
}
