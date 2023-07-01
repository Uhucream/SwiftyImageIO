//
//  ExifProperty+ColorSpace.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum ColorSpace: Int, Codable, Hashable {
        case sRGB = 0x1
        case adobeRGB = 0x2
        case wideGamutRGB = 0xfffd
        case iccProfile = 0xfffe
        case uncalibrated = 0xffff
    }
}
