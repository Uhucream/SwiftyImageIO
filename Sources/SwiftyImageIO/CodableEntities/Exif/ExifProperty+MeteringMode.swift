//
//  ExifProperty+MeteringMode.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension ExifProperty {
    enum MeteringMode: Int, Codable, Hashable {
        case unknown = 0
        case average = 1
        case centerWeightedAverage = 2
        case spot = 3
        case multiSpot = 4
        case pattern = 5
        case partial = 6
        case other = 255
    }
}
