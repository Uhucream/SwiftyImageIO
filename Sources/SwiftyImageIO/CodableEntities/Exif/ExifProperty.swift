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
    public var isoSpeedRatings: [AnyCodable]?
    
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
}
