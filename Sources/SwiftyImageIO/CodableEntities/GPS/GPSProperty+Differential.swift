//
//  GPSProperty+Differential.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum Differential: UInt16, Codable, Sendable {
        case noCorrection = 0
        case corrected = 1
    }
}
