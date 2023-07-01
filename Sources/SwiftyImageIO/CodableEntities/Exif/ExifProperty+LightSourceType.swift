//
//  ExifProperty+LightSourceType.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension ExifProperty {
    enum LightSourceType: Int, Codable, Hashable {
        case unknown = 0
        case daylight = 1
        case fluorescent = 2
        case tungsten = 3
        case flash = 4
        case fineWeather = 9
        case cloudyWeather = 10
        case shade = 11
        case daylightFluorescent = 12
        case dayWhiteFluorescent = 13
        case coolWhiteFluorescent = 14
        case whiteFluorescent = 15
        case standardLightA = 17
        case standardLightB = 18
        case standardLightC = 19
        case D55 = 20
        case D65 = 21
        case D75 = 22
        case D50 = 23
        case isoStudioTungsten = 24
        case other = 255
    }
}
