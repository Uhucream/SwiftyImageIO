//
//  ExifProperty+SaturationDirection.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum SaturationDirection: Int, Codable, Hashable, Sendable {
        case normal = 0
        case lowSaturation = 1
        case highSaturation = 2
    }
}
