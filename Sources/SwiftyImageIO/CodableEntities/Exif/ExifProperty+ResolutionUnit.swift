//
//  ExifProperty+ResolutionUnit.swift
//
//
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum ResolutionUnit: Int, Codable, Hashable, Sendable {
        case none = 1
        case inches = 2
        case cm = 3
    }
}
