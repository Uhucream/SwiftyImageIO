//
//  MakerAppleProperty+HDRImageType.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/04
//  
//

import Foundation

public extension MakerAppleProperty {
    enum HDRImageType: Int, Codable, Sendable {
        case hdr = 3
        case original = 4
    }
}
