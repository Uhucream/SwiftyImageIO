//
//  MakerAppleProperty.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/07/04
//  
//

import Foundation
import AnyCodable

/// Metadata for an image from an Apple camera.
public struct MakerAppleProperty: Codable, Identifiable {
    public var id: UUID {
        return .init()
    }
    
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
}
