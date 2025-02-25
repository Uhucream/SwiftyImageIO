//
//  MakerAppleProperty.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/07/04
//  
//

import Foundation
@preconcurrency import AnyCodable

/// Metadata for an image from an Apple camera.
public struct MakerAppleProperty: Codable, Identifiable, Sendable {
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
}
