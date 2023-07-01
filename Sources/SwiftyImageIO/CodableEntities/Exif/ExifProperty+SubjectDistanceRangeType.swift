//
//  ExifProperty+SubjectDistanceRangeType.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum SubjectDistanceRangeType: Int, Codable, Hashable {
        case unknown = 0
        case macro = 1
        case closeView = 2
        case distantView = 3
    }
}
