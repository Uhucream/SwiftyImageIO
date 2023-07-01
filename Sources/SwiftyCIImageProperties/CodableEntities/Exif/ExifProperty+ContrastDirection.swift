//
//  ExifProperty+ContrastDirection.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum ContrastDirection: Int, Codable, Hashable {
        case normal = 0
        case soft = 1
        case hard = 2
    }
}
