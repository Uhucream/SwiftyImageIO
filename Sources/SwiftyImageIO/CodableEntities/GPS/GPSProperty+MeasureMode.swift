//
//  GPSProperty+MeasureMode.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum MeasureMode: Int, Codable, Sendable {
        case twoDimensionalMeasurement = 2
        case threeDimensionalMeasurement = 3
    }
}
