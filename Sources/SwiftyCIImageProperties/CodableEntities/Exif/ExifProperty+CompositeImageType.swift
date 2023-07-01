//
//  ExifProperty+CompositeImageType.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum CompositeImageType: Int, Codable, Hashable {
        case unknown = 0
        case notCompositeImage = 1
        case generalCompositeImage = 2
        case compositeImageCapturedWhileShooting = 3
    }
}
