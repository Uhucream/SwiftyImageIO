//
//  ExifProperty+SensitivityType.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import Foundation

public extension ExifProperty {
    enum SensitivityType: Int, Codable, Hashable {
        case unknown = 0
        case standardOutputSensitivity = 1
        case recommendedExposureIndex = 2
        case isoSpeed = 3
        case standardOutputSensitivityAndRecommendedExposureIndex = 4
        case standardOutputSensitivityAndISOSpeed = 5
        case recommendedExposureIndexAndISOSpeed = 6
        case standardOutputSensitivityRecommendedExposureIndexAndISOSpeed = 7
    }
}
