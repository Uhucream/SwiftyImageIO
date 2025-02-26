//
//  ExifProperty+ExposureMode.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension ExifProperty {
    enum ExposureMode: Int, Codable, Hashable, Sendable {
        case autoExposure = 0
        case manualExposure = 1
        case autoBracket = 2
    }
}
