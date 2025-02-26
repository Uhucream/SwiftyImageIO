//
//  GPSProperty+Status.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum Status: String, Codable, Sendable {
        case measurementActive = "A"
        case measurementVoid = "V"
    }
}
