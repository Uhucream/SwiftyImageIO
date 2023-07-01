//
//  GPSProperty+DistanceLengthUnit.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum DistanceLengthUnit: String, Codable {
        case kilometers = "K"
        case miles = "M"
        case nauticalMiles = "N"
    }
}
