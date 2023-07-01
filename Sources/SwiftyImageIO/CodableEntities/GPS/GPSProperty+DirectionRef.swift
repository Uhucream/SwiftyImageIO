//
//  GPSProperty+DirectionRef.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum DirectionRef: String, Codable {
        case magneticNorth = "M"
        case trueNorth = "T"
    }
}
