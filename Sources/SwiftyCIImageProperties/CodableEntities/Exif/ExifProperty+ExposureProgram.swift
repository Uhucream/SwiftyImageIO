//
//  ExifProperty+ExposureProgram.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension ExifProperty {
    enum ExposureProgram: Int, Codable, Hashable {
        case notDefined = 0
        case manual = 1
        case normalProgram = 2
        case aperturePriority = 3
        case shutterPriority = 4
        case creativeProgram = 5
        case actionProgram = 6
        case portraitMode = 7
        case landscapeMode = 8
    }
}
