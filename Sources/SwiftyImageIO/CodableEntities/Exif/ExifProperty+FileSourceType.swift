//
//  ExifProperty+FileSourceType.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum FileSourceType: Int, Codable, Hashable, Sendable {
        case filmScanner = 1
        case reflectionPrintScanner = 2
        case digitalCamera = 3
    }
}
