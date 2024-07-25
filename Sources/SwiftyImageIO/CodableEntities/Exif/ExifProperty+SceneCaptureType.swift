//
//  ExifProperty+SceneCaptureType.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum SceneCaptureType: Int, Codable, Hashable, Sendable {
        case standard = 0
        case landscape = 1
        case portrait = 2
        case nightScene = 3
    }
}
