//
//  ExifProperty+CustomRenderedType.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum CustomRenderedType: Int, Codable, Hashable {
        //  MARK: - standard Exif
        case normal = 0
        case custom = 1
        
        // MARK: - used by Apple iOS devices
        case hdrNoOriginalSaved = 2
        case hdrOriginalSaved = 3
        case originalForHDR = 4
        case panorama = 6
        case portraitHDR = 7
        case portrait = 8
    }
}
