//
//  MakerAppleProperty.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/07/04
//  
//

import Foundation
import ImageIO
import AnyCodable

/// Metadata for an image from an Apple camera.
public struct MakerAppleProperty: Codable, Identifiable {
    public var id: UUID = UUID()
    
    public let makerNoteVersion: Int?

//    FIXME: Correct type annotaion
//    public let aeMatrix: AnyCodable?

    public let runTime: RunTimeInformation?

    public let aeStable: Bool?

    public let aeTarget: Int?

    public let aeAverage: Int?

    public let afStable: Bool?

    public let accelerationVector: [Double]?

    public let hdrImageType: HDRImageType?

    public let burstUUID: String?

    public let focusDistanceRange: ClosedRange<Double>?

    public let oisMode: Int?

    public let mediaGroupUUID: String?

    public let imageCaptureType: Int?

    public let imageUniqueId: String?

    public var livePhotoVideoIndex: Int?

    public let imageProcessingFlags: Int?

    public let qualityHint: String?

    public let luminanceNoiseAmplitude: AnyCodable?

    public let imageCaptureRequestId: String?

    public let hdrHeadroom: Double?

    public let sceneFlags: Int?

    public let signalToNoiseRatioType: Int?

    public let signalToNoiseRatio: Double?

    public let photoIdentifier: String?

    public let focusPosition: Int?

    public let hdrGain: Double?

    public let afMeasuredDepth: Int?

    public let afConfidence: Int?

//    FIXME: Correct type annotaion
//    public let colorCorrectionMatrix: AnyCodable?

    public let greenGhostMitigationStatus: Int?

    public let semanticStyle: Int?

    public let semanticStyleRenderingVer: Int?

    public let semanticStylePreset: Int?

    public let frontFacingCamera: Bool?
    
    // MARK: - Unknown properties
    
    let unkown_rawValue_13: Int?
    let unkown_rawValue_14: Int?
    let unkown_rawValue_16: Int?
    let unkown_rawValue_31: Int?
    let unkown_rawValue_35: [Int]?
    let unkown_rawValue_40: Int?
    let unkown_rawValue_43: String?
    let unkown_rawValue_45: Int?
    let unkown_rawValue_46: Int?
    let unkown_rawValue_51: Int?
    let unkown_rawValue_52: Int?
    let unkown_rawValue_53: Int?
    let unkown_rawValue_54: Int?
    let unkown_rawValue_55: Int?
    let unkown_rawValue_57: Int?
    let unkown_rawValue_58: Int?
    let unkown_rawValue_59: Int?
    let unkown_rawValue_60: Int?
    let unkown_rawValue_74: Int?
    
    init?(dictionary: Any?) {
        guard let dictionary = dictionary as? [Int : Any] else { return nil }
        self.makerNoteVersion = dictionary[CodingKeys.makerNoteVersion.rawValueInt] as? Int
        self.runTime = dictionary[CodingKeys.runTime.rawValueInt] as? RunTimeInformation
        self.aeStable = dictionary[CodingKeys.aeStable.rawValueInt] as? Bool
        self.aeTarget = dictionary[CodingKeys.aeTarget.rawValueInt] as? Int
        self.aeAverage = dictionary[CodingKeys.aeAverage.rawValueInt] as? Int
        self.afStable = dictionary[CodingKeys.afStable.rawValueInt] as? Bool
        self.accelerationVector = dictionary[CodingKeys.accelerationVector.rawValueInt] as? [Double]
        self.hdrImageType = dictionary[CodingKeys.hdrImageType.rawValueInt] as? HDRImageType
        self.burstUUID = dictionary[CodingKeys.burstUUID.rawValueInt] as? String
        self.focusDistanceRange = dictionary[CodingKeys.focusDistanceRange.rawValueInt] as? ClosedRange<Double>
        self.oisMode = dictionary[CodingKeys.oisMode.rawValueInt] as? Int
        self.mediaGroupUUID = dictionary[CodingKeys.mediaGroupUUID.rawValueInt] as? String
        self.imageCaptureType = dictionary[CodingKeys.imageCaptureType.rawValueInt] as? Int
        self.imageUniqueId = dictionary[CodingKeys.imageUniqueId.rawValueInt] as? String
        self.livePhotoVideoIndex = dictionary[CodingKeys.livePhotoVideoIndex.rawValueInt] as? Int
        self.imageProcessingFlags = dictionary[CodingKeys.imageProcessingFlags.rawValueInt] as? Int
        self.qualityHint = dictionary[CodingKeys.qualityHint.rawValueInt] as? String
        self.luminanceNoiseAmplitude = dictionary[CodingKeys.luminanceNoiseAmplitude.rawValueInt] as? AnyCodable
        self.imageCaptureRequestId = dictionary[CodingKeys.imageCaptureRequestId.rawValueInt] as? String
        self.hdrHeadroom = dictionary[CodingKeys.hdrHeadroom.rawValueInt] as? Double
        self.sceneFlags = dictionary[CodingKeys.sceneFlags.rawValueInt] as? Int
        self.signalToNoiseRatioType = dictionary[CodingKeys.signalToNoiseRatioType.rawValueInt] as? Int
        self.signalToNoiseRatio = dictionary[CodingKeys.signalToNoiseRatio.rawValueInt] as? Double
        self.photoIdentifier = dictionary[CodingKeys.photoIdentifier.rawValueInt] as? String
        self.focusPosition = dictionary[CodingKeys.focusPosition.rawValueInt] as? Int
        self.hdrGain = dictionary[CodingKeys.hdrGain.rawValueInt] as? Double
        self.afMeasuredDepth = dictionary[CodingKeys.afMeasuredDepth.rawValueInt] as? Int
        self.afConfidence = dictionary[CodingKeys.afConfidence.rawValueInt] as? Int
        self.greenGhostMitigationStatus = dictionary[CodingKeys.greenGhostMitigationStatus.rawValueInt] as? Int
        self.semanticStyle = dictionary[CodingKeys.semanticStyle.rawValueInt] as? Int
        self.semanticStyleRenderingVer = dictionary[CodingKeys.semanticStyleRenderingVer.rawValueInt] as? Int
        self.semanticStylePreset = dictionary[CodingKeys.semanticStylePreset.rawValueInt] as? Int
        self.frontFacingCamera = dictionary[CodingKeys.frontFacingCamera.rawValueInt] as? Bool
        self.unkown_rawValue_13 = nil
        self.unkown_rawValue_14 = nil
        self.unkown_rawValue_16 = nil
        self.unkown_rawValue_31 = nil
        self.unkown_rawValue_35 = nil
        self.unkown_rawValue_40 = nil
        self.unkown_rawValue_43 = nil
        self.unkown_rawValue_45 = nil
        self.unkown_rawValue_46 = nil
        self.unkown_rawValue_51 = nil
        self.unkown_rawValue_52 = nil
        self.unkown_rawValue_53 = nil
        self.unkown_rawValue_54 = nil
        self.unkown_rawValue_55 = nil
        self.unkown_rawValue_57 = nil
        self.unkown_rawValue_58 = nil
        self.unkown_rawValue_59 = nil
        self.unkown_rawValue_60 = nil
        self.unkown_rawValue_74 = nil
    }
}
