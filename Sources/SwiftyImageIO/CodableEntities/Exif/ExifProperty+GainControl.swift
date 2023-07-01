//
//  ExifProperty+GainControl.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum GainControl: Int, Codable, Hashable {
        case none = 0
        case lowGainUp = 1
        case highGainUp = 2
        case lowGainDown = 3
        case highGainDown = 4
    }
}
