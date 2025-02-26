//
//  GPSProperty+LatitudeRef.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension GPSProperty {
    enum LatitudeRef: String, Codable, Sendable{
        case north = "N"
        case south = "S"
    }
}
