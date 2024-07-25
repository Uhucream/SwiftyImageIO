//
//  TIFFProperty+ResolutionUnit.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension TIFFProperty {
    enum ResolutionUnit: Int, Codable, Sendable {
        case none = 1
        case inch = 2
        case centimeter = 3
    }
}
