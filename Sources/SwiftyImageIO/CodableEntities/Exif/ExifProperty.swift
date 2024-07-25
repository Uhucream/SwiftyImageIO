//
//  ExifProperty.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

@preconcurrency import AnyCodable
import Foundation
import ImageIO

/// Exchangeable Image File Format (EXIF) data.
public struct ExifProperty: Codable, Equatable, Hashable, Sendable {
    //  MARK: - Camera Settings
    
    /// For a particular camera mode, indicates the conditions for taking the picture.
    public let deviceSettingDescription: AnyCodable?
    
    /// The F-number.
    public var fNumber: Double?
    
    /// The shutter speed value.
    public var shutterSpeedValue: Double?
    
    /// The aperture value.
    public var apertureValue: Double?
    
    /// The maximum aperture value.
    public var maxApertureValue: Double?
    
    /// The focal length.
    public var focalLength: Double?

    /// The spectral sensitivity of each channel.
    public var spectralSensitivity: Double?
    
    /// The ISO speed ratings.
    public var isoSpeedRatings: [Int]?
    
    /// The distance to the subject, in meters.
    public var subjectDistance: Double?
    
    /// The metering mode.
    public var meteringMode: MeteringMode?
    
    /// The subject area.
    public var subjectArea: AnyCodable?
    
    /// The location of the image’s primary subject.
    public var subjectLocation: AnyCodable?
    
    /// The sensor type of the camera or input device.
    public var sensingMethod: SensingMethod?
    
    /// The scene type.
    public var sceneType: Int?
    
    /// The digital zoom ratio.
    public var digitalZoomRatio: Double?
    
    /// The equivalent focal length in 35 mm film.
    public var focalLengthIn35mmFilm: Double?
    
    /// The scene capture type; for example, standard, landscape, portrait, or night.
    public var sceneCaptureType: SceneCaptureType?
    
    /// The distance to the subject.
    public var subjectDistanceRange: SubjectDistanceRangeType?
    
    //  MARK: - Exposure
    
    /// The exposure time.
    public var exposureTime: TimeInterval?
    
    /// The exposure program.
    public var exposureProgram: ExposureProgram?
    
    /// The selected exposure index.
    public var exposureIndex: Int?
    
    /// The exposure mode setting.
    public var exposureMode: ExposureMode?
    
    /// The ISO speed setting used to capture the image.
    public var isoSpeed: AnyCodable?
    
    /// The ISO speed latitude yyy value.
    public var isoSpeedLatitudeYYY: AnyCodable?
    
    /// The ISO speed latitude zzz value.
    public var isoSpeedLatitudeZZZ: AnyCodable?
    
    /// The recommended exposure index.
    public var recommendedExposureIndex: Int?
    
    /// The exposure bias value.
    public var exposureBiasValue: Double?
    
    /// The type of sensitivity data stored for the image.
    public var sensitivityType: SensitivityType?
    
    /// The sensitivity data for the image.
    public var standardOutputSensitivity: UInt?
    
    /// The exposure times for composite images.
    public var sourceExposureTimesOfCompositeImage: AnyCodable?
    
    //  MARK: - Image Quality
    
    /// The color filter array (CFA) pattern, which is the geometric pattern of the image sensor for a 1-chip color sensor area.
    public var cfaPattern: AnyCodable?
    
    /// The brightness value.
    public var brightnessValue: Double?
    
    /// The light source.
    public var lightSource: LightSourceType?
    
    /// The flash status when the image was shot.
    public var flash: FlashMode?
    
    /// The spatial frequency table and spatial frequency response values in the width, height, and diagonal directions.
    public var spatialFrequencyResponse: String?
    
    /// The contrast setting.
    public var contrast: ContrastDirection?
    
    /// The saturation setting.
    public var saturation: SaturationDirection?
    
    /// The sharpness setting.
    public var sharpness: SharpnessDirection?
    
    /// The gamma setting.
    public var gamma: GammaCoefficient?
    
    /// The white balance mode.
    public var whiteBalance: WhiteBalanceMode?
    
    //  MARK: - Image Settings
    
    /// The gain adjustment setting.
    public var gainControl: GainControl?
    
    /// The unique ID of the image.
    public var imageUniqueId: String?
    
    /// The bits per pixel of the compression mode.
    public var compressedBitsPerPixel: Double?
    
    /// The color space.
    public var colorSpace: ColorSpace?
    
    /// The x dimension of a pixel.
    public var pixelXDimension: UInt?
    
    /// The y dimension of a pixel.
    public var pixelYDimension: UInt?
    
    /// A sound file related to the image.
    public var relatedSoundFile: String?
    
    /// The number of image-width pixels (x-axis) per focal plane resolution unit.
    public var focalPlaneXResolution: Double?
    
    /// The number of image-height pixels (y-axis) per focal plane resolution unit.
    public var focalPlaneYResolution: Double?
    
    /// The unit of measurement for the focal plane x and y resolutions.
    public var focalPlaneResolutionUnit: ResolutionUnit?
    
    /// Special rendering performed on the image data.
    public var customRendered: CustomRenderedType?
    
    public var compositeImage: CompositeImageType?
    
    /// The opto-electric conversion function (OECF) that defines the relationship between the optical input of the camera and the resulting image.
    public var oecf: AnyCodable?
    
    /// The components configuration for compressed data.
    public var componentsConfiguration: [Int]?
    
    /// The number of images that make up a composite image.
    public var sourceImageNumberOfCompositeImage: [Int]?
    
    /// The image source.
    public var fileSource: FileSourceType?
    
    //  MARK: - Timestamp
    
    /// The original date and time.
    public var dateTimeOriginal: Date?
    
    /// The digitized date and time.
    public var dateTimeDigitized: Date?
    
    /// The fraction of seconds for the date and time tag.
    public var subsecTime: String?
    
    /// The fraction of seconds for the original date and time tag.
    public var subsecTimeOriginal: String?
    
    /// The fraction of seconds for the digitized date and time tag.
    public var subsecTimeDigitized: String?
    
    
    public var offsetTime: String?
    
    
    public var offsetTimeOriginal: String?
    
    
    public var offsetTimeDigitized: String?
    
    //  MARK: - Lens Information
    
    /// The specification information for the camera lens.
    public var lensSpecification: [Double]?
    
    /// A string with the name of the lens manufacturer.
    public var lensMake: String?
    
    /// A string with the lens model information.
    public var lensModel: String?
    
    /// A string with the lens’s serial number.
    public var lensSerialNumber: String?
    
    //  MARK: - Camera Information
    
    /// Information specified by the camera manufacturer.
    public var makerNote: AnyCodable?
    
    /// A user comment.
    public var userComment: String?
    
    /// A string with the name of the camera’s owner.
    public var cameraOwnerName: String?
    
    /// A string with the serial number of the camera.
    public var bodySerialNumber: String?
    
    //  MARK: - Flash Information
    
    /// The FlashPix version supported by an FPXR file.
    public var flashpixVersion: [Int]?
    
    /// The strobe energy when the image was captured, in beam candle power seconds.
    public var flashEnergy: Int?
    
    //  MARK: - EXIF Format
    
    /// The EXIF version.
    public var exifVersion: [Int]?
    
    init?(dictionary: Any?) {
        guard let dictionary = dictionary as? [String : Any] else { return nil }
        self.deviceSettingDescription = dictionary[""] as? AnyCodable
        self.fNumber = dictionary[kCGImagePropertyExifFNumber as String] as? Double
        self.shutterSpeedValue = dictionary[kCGImagePropertyExifShutterSpeedValue as String] as? Double
        self.apertureValue = dictionary[kCGImagePropertyExifApertureValue as String] as? Double
        self.maxApertureValue = dictionary[kCGImagePropertyExifMaxApertureValue as String] as? Double
        self.focalLength = dictionary[kCGImagePropertyExifFocalLength as String] as? Double
        self.spectralSensitivity = dictionary[kCGImagePropertyExifSpectralSensitivity as String] as? Double
        self.isoSpeedRatings = dictionary[kCGImagePropertyExifISOSpeedRatings as String] as? [Int]
        self.subjectDistance = dictionary[kCGImagePropertyExifSubjectDistance as String] as? Double
        self.meteringMode = dictionary[kCGImagePropertyExifMeteringMode as String] as? MeteringMode
        self.subjectArea = dictionary[kCGImagePropertyExifSubjectArea as String] as? AnyCodable
        self.subjectLocation = dictionary[kCGImagePropertyExifSubjectLocation as String] as? AnyCodable
        self.sensingMethod = dictionary[kCGImagePropertyExifSensingMethod as String] as? SensingMethod
        self.sceneType = dictionary[kCGImagePropertyExifSceneType as String] as? Int
        self.digitalZoomRatio = dictionary[kCGImagePropertyExifDigitalZoomRatio as String] as? Double
        self.focalLengthIn35mmFilm = dictionary[kCGImagePropertyExifFocalLenIn35mmFilm as String] as? Double
        self.sceneCaptureType = dictionary[kCGImagePropertyExifSceneCaptureType as String] as? SceneCaptureType
        self.subjectDistanceRange = dictionary[kCGImagePropertyExifSubjectDistRange as String] as? SubjectDistanceRangeType
        self.exposureTime = dictionary[kCGImagePropertyExifExposureTime as String] as? TimeInterval
        self.exposureProgram = dictionary[kCGImagePropertyExifExposureProgram as String] as? ExposureProgram
        self.exposureIndex = dictionary[kCGImagePropertyExifExposureIndex as String] as? Int
        self.exposureMode = dictionary[kCGImagePropertyExifExposureMode as String] as? ExposureMode
        self.isoSpeed = dictionary[kCGImagePropertyExifISOSpeed as String] as? AnyCodable
        self.isoSpeedLatitudeYYY = dictionary[kCGImagePropertyExifISOSpeedLatitudeyyy as String] as? AnyCodable
        self.isoSpeedLatitudeZZZ = dictionary[kCGImagePropertyExifISOSpeedLatitudezzz as String] as? AnyCodable
        self.recommendedExposureIndex = dictionary[kCGImagePropertyExifRecommendedExposureIndex as String] as? Int
        self.exposureBiasValue = dictionary[kCGImagePropertyExifExposureBiasValue as String] as? Double
        self.sensitivityType = dictionary[kCGImagePropertyExifSensitivityType as String] as? SensitivityType
        self.standardOutputSensitivity = dictionary[kCGImagePropertyExifStandardOutputSensitivity as String] as? UInt
        self.sourceExposureTimesOfCompositeImage = dictionary[kCGImagePropertyExifSourceExposureTimesOfCompositeImage as String] as? AnyCodable
        self.cfaPattern = dictionary[kCGImagePropertyExifCFAPattern as String] as? AnyCodable
        self.brightnessValue = dictionary[kCGImagePropertyExifBrightnessValue as String] as? Double
        self.lightSource = dictionary[kCGImagePropertyExifLightSource as String] as? LightSourceType
        self.flash = dictionary[kCGImagePropertyExifFlash as String] as? FlashMode
        self.spatialFrequencyResponse = dictionary[kCGImagePropertyExifSpatialFrequencyResponse as String] as? String
        self.contrast = dictionary[kCGImagePropertyExifContrast as String] as? ContrastDirection
        self.saturation = dictionary[kCGImagePropertyExifSaturation as String] as? SaturationDirection
        self.sharpness = dictionary[kCGImagePropertyExifSharpness as String] as? SharpnessDirection
        self.gamma = dictionary[kCGImagePropertyExifGamma as String] as? GammaCoefficient
        self.whiteBalance = dictionary[kCGImagePropertyExifWhiteBalance as String] as? WhiteBalanceMode
        self.gainControl = dictionary[kCGImagePropertyExifGainControl as String] as? GainControl
        self.imageUniqueId = dictionary[kCGImagePropertyExifImageUniqueID as String] as? String
        self.compressedBitsPerPixel = dictionary[kCGImagePropertyExifCompressedBitsPerPixel as String] as? Double
        self.colorSpace = dictionary[kCGImagePropertyExifColorSpace as String] as? ColorSpace
        self.pixelXDimension = dictionary[kCGImagePropertyExifPixelXDimension as String] as? UInt
        self.pixelYDimension = dictionary[kCGImagePropertyExifPixelYDimension as String] as? UInt
        self.relatedSoundFile = dictionary[kCGImagePropertyExifRelatedSoundFile as String] as? String
        self.focalPlaneXResolution = dictionary[kCGImagePropertyExifFocalPlaneXResolution as String] as? Double
        self.focalPlaneYResolution = dictionary[kCGImagePropertyExifFocalPlaneYResolution as String] as? Double
        self.focalPlaneResolutionUnit = dictionary[kCGImagePropertyExifFocalPlaneResolutionUnit as String] as? ResolutionUnit
        self.customRendered = dictionary[kCGImagePropertyExifCustomRendered as String] as? CustomRenderedType
        self.compositeImage = dictionary[kCGImagePropertyExifCompositeImage as String] as? CompositeImageType
        self.oecf = dictionary[kCGImagePropertyExifOECF as String] as? AnyCodable
        self.componentsConfiguration = dictionary[kCGImagePropertyExifComponentsConfiguration as String] as? [Int]
        self.sourceImageNumberOfCompositeImage = dictionary[kCGImagePropertyExifSourceImageNumberOfCompositeImage as String] as? [Int]
        self.fileSource = dictionary[kCGImagePropertyExifFileSource as String] as? FileSourceType
        self.dateTimeOriginal = dictionary[kCGImagePropertyExifDateTimeOriginal as String] as? Date
        self.dateTimeDigitized = dictionary[kCGImagePropertyExifDateTimeDigitized as String] as? Date
        self.subsecTime = dictionary[kCGImagePropertyExifSubsecTime as String] as? String
        self.subsecTimeOriginal = dictionary[kCGImagePropertyExifSubsecTimeOriginal as String] as? String
        self.subsecTimeDigitized = dictionary[kCGImagePropertyExifSubsecTimeDigitized as String] as? String
        self.offsetTime = dictionary[kCGImagePropertyExifOffsetTime as String] as? String
        self.offsetTimeOriginal = dictionary[kCGImagePropertyExifOffsetTimeOriginal as String] as? String
        self.offsetTimeDigitized = dictionary[kCGImagePropertyExifOffsetTimeDigitized as String] as? String
        self.lensSpecification = dictionary[kCGImagePropertyExifLensSpecification as String] as? [Double]
        self.lensMake = dictionary[kCGImagePropertyExifLensMake as String] as? String
        self.lensModel = dictionary[kCGImagePropertyExifLensModel as String] as? String
        self.lensSerialNumber = dictionary[kCGImagePropertyExifLensSerialNumber as String] as? String
        self.makerNote = dictionary[kCGImagePropertyExifMakerNote as String] as? AnyCodable
        self.userComment = dictionary[kCGImagePropertyExifUserComment as String] as? String
        self.cameraOwnerName = dictionary[kCGImagePropertyExifCameraOwnerName as String] as? String
        self.bodySerialNumber = dictionary[kCGImagePropertyExifBodySerialNumber as String] as? String
        self.flashpixVersion = dictionary[kCGImagePropertyExifFlashPixVersion as String] as? [Int]
        self.flashEnergy = dictionary[kCGImagePropertyExifFlashEnergy as String] as? Int
        self.exifVersion = dictionary[kCGImagePropertyExifVersion as String] as? [Int]
    }
}
