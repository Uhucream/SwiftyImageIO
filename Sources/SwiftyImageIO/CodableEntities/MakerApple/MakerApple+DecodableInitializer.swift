//
//  MakerApple+DecodableInitializer.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/04
//  
//

import AnyCodable
import Foundation

public extension MakerAppleProperty {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.makerNoteVersion = try container.decodeIfPresent(Int.self, forKey: .makerNoteVersion)
        
//    FIXME: Correct type annotaion
//        self.aeMatrix = try container.decodeIfPresent(AnyCodable.self, forKey: .aeMatrix)
        
        self.runTime = try container.decodeIfPresent(RunTimeInformation.self, forKey: .runTime)
        
        self.aeStable = try container.decodeIfPresent(Bool.self, forKey: .aeStable)
        
        self.aeTarget = try container.decodeIfPresent(Int.self, forKey: .aeTarget)
        
        self.aeAverage = try container.decodeIfPresent(Int.self, forKey: .aeAverage)
        
        self.afStable = try container.decodeIfPresent(Bool.self, forKey: .afStable)
        
        self.accelerationVector = try container.decodeIfPresent([Double].self, forKey: .accelerationVector)
        
        self.hdrImageType = try container.decodeIfPresent(HDRImageType.self, forKey: .hdrImageType)
        
        self.burstUUID = try container.decodeIfPresent(String.self, forKey: .burstUUID)
        
        self.focusDistanceRange = {
            do {
                let distanceRangeValues = try container.decodeIfPresent([Double].self, forKey: .focusDistanceRange)
                
                guard let minValue = distanceRangeValues?.min() else { return nil }
                guard let maxValue = distanceRangeValues?.max() else { return nil }
                
                return minValue...maxValue
            } catch {
                print(error)
                
                return nil
            }
        }()
        
        self.oisMode = try container.decodeIfPresent(Int.self, forKey: .oisMode)
        
        self.mediaGroupUUID = try container.decodeIfPresent(String.self, forKey: .mediaGroupUUID)
        
        self.imageCaptureType = try container.decodeIfPresent(Int.self, forKey: .imageCaptureType)
        
        self.imageUniqueId = try container.decodeIfPresent(String.self, forKey: .imageUniqueId)
        
        self.livePhotoVideoIndex = try container.decodeIfPresent(Int.self, forKey: .livePhotoVideoIndex)
        
        self.imageProcessingFlags = try container.decodeIfPresent(Int.self, forKey: .imageProcessingFlags)
        
        self.qualityHint = try container.decodeIfPresent(String.self, forKey: .qualityHint)
        
        self.luminanceNoiseAmplitude = try container.decodeIfPresent(AnyCodable.self, forKey: .luminanceNoiseAmplitude)
        
        self.imageCaptureRequestId = try container.decodeIfPresent(String.self, forKey: .imageCaptureRequestId)
        
        self.hdrHeadroom = try container.decodeIfPresent(Double.self, forKey: .hdrHeadroom)
        
        self.sceneFlags = try container.decodeIfPresent(Int.self, forKey: .sceneFlags)
        
        self.signalToNoiseRatioType = try container.decodeIfPresent(Int.self, forKey: .signalToNoiseRatioType)
        
        self.signalToNoiseRatio = try container.decodeIfPresent(Double.self, forKey: .signalToNoiseRatio)
        
        self.photoIdentifier = try container.decodeIfPresent(String.self, forKey: .photoIdentifier)
        
        self.focusPosition = try container.decodeIfPresent(Int.self, forKey: .focusPosition)
        
        self.hdrGain = try container.decodeIfPresent(Double.self, forKey: .hdrGain)
        
        self.afMeasuredDepth = try container.decodeIfPresent(Int.self, forKey: .afMeasuredDepth)
        
        self.afConfidence = try container.decodeIfPresent(Int.self, forKey: .afConfidence)
        
//    FIXME: Correct type annotaion
//        self.colorCorrectionMatrix = try container.decodeIfPresent(AnyCodable.self, forKey: .colorCorrectionMatrix)
        
        self.greenGhostMitigationStatus = try container.decodeIfPresent(Int.self, forKey: .greenGhostMitigationStatus)
        
        self.semanticStyle = try container.decodeIfPresent(Int.self, forKey: .semanticStyle)
        
        self.semanticStyleRenderingVer = try container.decodeIfPresent(Int.self, forKey: .semanticStyleRenderingVer)
        
        self.semanticStylePreset = try container.decodeIfPresent(Int.self, forKey: .semanticStylePreset)
        
        self.frontFacingCamera = try container.decodeIfPresent(Bool.self, forKey: .frontFacingCamera)

        // FIXME: - Unknown name properies

        self.unkown_rawValue_13 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_13)
        
        self.unkown_rawValue_14 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_14)
        
        self.unkown_rawValue_16 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_16)
        
        self.unkown_rawValue_31 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_31)
        
        self.unkown_rawValue_35 = try container.decodeIfPresent([Int].self, forKey: .unkown_rawValue_35)
        
        self.unkown_rawValue_40 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_40)
        
        self.unkown_rawValue_43 = try container.decodeIfPresent(String.self, forKey: .unkown_rawValue_43)
        
        self.unkown_rawValue_45 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_45)
        
        self.unkown_rawValue_46 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_46)
        
        self.unkown_rawValue_51 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_51)
        
        self.unkown_rawValue_52 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_52)
        
        self.unkown_rawValue_53 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_53)
        
        self.unkown_rawValue_54 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_54)
        
        self.unkown_rawValue_55 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_55)
        
        self.unkown_rawValue_57 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_57)
        
        self.unkown_rawValue_58 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_58)
        
        self.unkown_rawValue_59 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_59)
        
        self.unkown_rawValue_60 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_60)
        
        self.unkown_rawValue_74 = try container.decodeIfPresent(Int.self, forKey: .unkown_rawValue_74)
    }
}
