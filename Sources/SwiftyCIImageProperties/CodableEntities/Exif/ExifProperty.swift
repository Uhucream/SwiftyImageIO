//
//  ExifProperty.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import AnyCodable
import Foundation
import ImageIO

public struct ExifProperty: Codable, Equatable, Hashable {
    //  MARK: - Camera Settings
    public let deviceSettingDescription: AnyCodable?
    public var fNumber: Double?
    public var shutterSpeedValue: Double?
    public var apertureValue: Double?
    public var maxApertureValue: Double?
    public var focalLength: Double?
    public var spectralSensitivity: Double?
    public var isoSpeedRatings: [AnyCodable]?
    public var subjectDistance: Double?
    public var meteringMode: MeteringMode?
    public var subjectArea: AnyCodable?
    public var subjectLocation: AnyCodable?
    public var sensingMethod: SensingMethod?
    public var sceneType: Int?
    public var digitalZoomRatio: Double?
    public var focalLengthIn35mmFilm: Double?
    public var sceneCaptureType: SceneCaptureType?
    public var subjectDistanceRange: SubjectDistanceRangeType?
    
    //  MARK: - Exposure
    public var exposureTime: TimeInterval?
    public var exposureProgram: ExposureProgram?
    public var exposureIndex: Int?
    public var exposureMode: ExposureMode?
    public var isoSpeed: AnyCodable?
    public var isoSpeedLatitudeYYY: AnyCodable?
    public var isoSpeedLatitudeZZZ: AnyCodable?
    public var recommendedExposureIndex: Int?
    public var exposureBiasValue: Double?
    public var sensitivityType: SensitivityType?
    public var standardOutputSensitivity: UInt?
    public var sourceExposureTimesOfCompositeImage: AnyCodable?
    
    //  MARK: - Image Quality
    public var cfaPattern: AnyCodable?
    public var brightnessValue: Double?
    public var lightSource: LightSourceType?
    public var flash: FlashMode?
    public var spatialFrequencyResponse: String?
    public var contrast: ContrastDirection?
    public var saturation: SaturationDirection?
    public var sharpness: SharpnessDirection?
    public var gamma: GammaCoefficient?
    public var whiteBalance: WhiteBalanceMode?
    
    //  MARK: - Image Settings
    public var gainControl: GainControl?
    public var imageUniqueId: String?
    public var compressedBitsPerPixel: Double?
    public var colorSpace: ColorSpace?
    public var pixelXDimension: UInt?
    public var pixelYDimension: UInt?
    public var relatedSoundFile: String?
    public var focalPlaneXResolution: Double?
    public var focalPlaneYResolution: Double?
    public var focalPlaneResolutionUnit: ResolutionUnit?
    public var customRendered: CustomRenderedType?
    public var compositeImage: CompositeImageType?
    public var oecf: AnyCodable?
    public var componentsConfiguration: AnyCodable?
    public var sourceImageNumberOfCompositeImage: UInt?
    public var fileSource: FileSourceType?
    
    //  MARK: - Timestamp
    public var dateTimeOriginal: Date?
    public var dateTimeDigitized: Date?
    public var subsecTime: String?
    public var subsecTimeOriginal: String?
    public var subsecTimeDigitized: String?
    public var offsetTime: String?
    public var offsetTimeOriginal: String?
    public var offsetTimeDigitized: String?
    
    //  MARK: - Lens Information
    public var lensSpecification: [Double]?
    public var lensMake: String?
    public var lensModel: String?
    public var lensSerialNumber: String?
    
    //  MARK: - Camera Information
    public var makerNote: AnyCodable?
    public var userComment: String?
    public var cameraOwnerName: String?
    public var bodySerialNumber: String?
    
    //  MARK: - Flash Information
    public var flashpixVersion: String?
    public var flashEnergy: Int?
    
    //  MARK: - EXIF Format
    public var exifVersion: [Int]?
}
