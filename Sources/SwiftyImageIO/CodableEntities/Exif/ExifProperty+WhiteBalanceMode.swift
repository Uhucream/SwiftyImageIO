//
//  ExifProperty+WhiteBalanceMode.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension ExifProperty {
    enum WhiteBalanceMode: Int, Codable, Hashable {
        case autoWhiteBalance = 0
        case manualWhiteBalance = 1
    }
}
