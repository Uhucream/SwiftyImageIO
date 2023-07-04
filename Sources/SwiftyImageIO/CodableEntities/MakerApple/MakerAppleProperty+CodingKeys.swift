//
//  MakerAppleProperty+CodingKeys.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/04
//  
//

import Foundation

extension MakerAppleProperty {
    enum CodingKeys: String, CodingKey {
        case makerNoteVersion

//        FIXME: Correct type annotation of MakerAppleProperty struct
//        case aeMatrix

        case runTime
        case aeStable
        case aeTarget
        case aeAverage
        case afStable
        case accelerationVector
        case hdrImageType
        case burstUUID
        case focusDistanceRange
        case oisMode
        case mediaGroupUUID
        case imageCaptureType
        case imageUniqueId
        case livePhotoVideoIndex
        case imageProcessingFlags
        case qualityHint
        case luminanceNoiseAmplitude
        case imageCaptureRequestId
        case hdrHeadroom
        case sceneFlags
        case signalToNoiseRatioType
        case signalToNoiseRatio
        case photoIdentifier
        case focusPosition
        case hdrGain
        case afMeasuredDepth
        case afConfidence

//        FIXME: Correct type annotation of MakerAppleProperty struct
//        case colorCorrectionMatrix

        case greenGhostMitigationStatus
        case semanticStyle
        case semanticStyleRenderingVer
        case semanticStylePreset
        case frontFacingCamera
        
        var rawValue: String {
            return .init(rawValueInt)
        }
        
        private var rawValueInt: Int {
            switch self {
            case .makerNoteVersion:
                return 0x0001
                
//            case .aeMatrix:
//                return 0x0002
                
            case .runTime:
                return 0x0003
                
            case .aeStable:
                return 0x0004
                
            case .aeTarget:
                return 0x0005
                
            case .aeAverage:
                return 0x0006
                
            case .afStable:
                return 0x0007
                
            case .accelerationVector:
                return 0x0008
                
            case .hdrImageType:
                return 0x000a
                
            case .burstUUID:
                return 0x000b
                
            case .focusDistanceRange:
                return 0x000c
                
            case .oisMode:
                return 0x000f
                
            case .mediaGroupUUID:
                return 0x0011
                
            case .imageCaptureType:
                return 0x0014
                
            case .imageUniqueId:
                return 0x0015
                
            case .livePhotoVideoIndex:
                return 0x0017
                
            case .imageProcessingFlags:
                return 0x0019
                
            case .qualityHint:
                return 0x001a
                
            case .luminanceNoiseAmplitude:
                return 0x001d
                
            case .imageCaptureRequestId:
                return 0x0020
                
            case .hdrHeadroom:
                return 0x0021
                
            case .sceneFlags:
                return 0x0025
                
            case .signalToNoiseRatioType:
                return 0x0026
                
            case .signalToNoiseRatio:
                return 0x0027
                
            case .photoIdentifier:
                return 0x002b
                
            case .focusPosition:
                return 0x002f
                
            case .hdrGain:
                return 0x0030
                
            case .afMeasuredDepth:
                return 0x0038
                
            case .afConfidence:
                return 0x003d
                
//            case .colorCorrectionMatrix:
//                return 0x003e
                
            case .greenGhostMitigationStatus:
                return 0x003f
                
            case .semanticStyle:
                return 0x0040
                
            case .semanticStyleRenderingVer:
                return 0x0041
                
            case .semanticStylePreset:
                return 0x0042
                
            case .frontFacingCamera:
                return 0x0045
            }
        }
    }
}
