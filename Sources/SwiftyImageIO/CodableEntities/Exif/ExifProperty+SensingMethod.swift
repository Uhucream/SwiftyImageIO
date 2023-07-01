//
//  ExifProperty+SensingMethod.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum SensingMethod: Int, Codable, Hashable {
        case notDefined = 1
        case oneChipColorAreaSensor = 2
        case twoChipColorAreaSensor = 3
        case threeChipColorAreaSensor = 4
        case colorSequentialAreaSensor = 5
        case trilinearSensor = 7
        case colorSequentialLinearSensor = 8
    }
}
