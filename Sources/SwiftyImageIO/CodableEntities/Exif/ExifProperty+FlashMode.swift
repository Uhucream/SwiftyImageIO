//
//  ExifProperty+FlashMode.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension ExifProperty {
    enum FlashMode: Int, Codable, Hashable, Sendable {
        case noFlash = 0x0
        case fired = 0x1
        case firedReturnNotDetected = 0x5
        case firedReturnDetected = 0x7
        case onDidNotFire = 0x8
        case onFired = 0x9
        case onReturnNotDetected = 0xd
        case onReturnDetected = 0xf
        case offDidNotFire = 0x10
        case offDidNotFireReturnNotDetected = 0x14
        case autoDidNotFire = 0x18
        case autoFired = 0x19
        case autoFiredReturnNotDetected = 0x1d
        case autoFiredReturnDetected = 0x1f
        case noFlashFunction = 0x20
        case offNoFlashFunction = 0x30
        case firedRedEyeReduction = 0x41
        case firedRedEyeReductionReturnNotDetected = 0x45
        case firedRedEyeReductionReturnDetected = 0x47
        case onRedEyeReduction = 0x49
        case onRedEyeReductionReturnNotDetected = 0x4d
        case onRedEyeReductionReturnDetected = 0x4f
        case offRedEyeReduction = 0x50
        case autoDidNotFireRedEyeReduction = 0x58
        case autoFiredRedEyeReduction = 0x59
        case autoFiredRedEyeReductionReturnNotDetected = 0x5d
        case autoFiredRedEyeReductionReturnDetected = 0x5f
    }
}
