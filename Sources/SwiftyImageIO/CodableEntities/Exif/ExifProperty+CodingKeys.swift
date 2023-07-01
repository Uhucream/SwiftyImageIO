//
//  ExifProperty+CodingKeys.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation
import ImageIO

extension ExifProperty {
    enum CodingKeys: String, CodingKey {
        case deviceSettingDescription
        case fNumber
        case shutterSpeedValue
        case apertureValue
        case maxApertureValue
        case focalLength
        case spectralSensitivity
        case isoSpeedRatings
        case subjectDistance
        case meteringMode
        case subjectArea
        case subjectLocation
        case sensingMethod
        case sceneType
        case digitalZoomRatio
        case focalLengthIn35mmFilm
        case sceneCaptureType
        case subjectDistanceRange
        case exposureTime
        case exposureProgram
        case exposureIndex
        case exposureMode
        case isoSpeed
        case isoSpeedLatitudeYYY
        case isoSpeedLatitudeZZZ
        case recommendedExposureIndex
        case exposureBiasValue
        case sensitivityType
        case standardOutputSensitivity
        case sourceExposureTimesOfCompositeImage
        case cfaPattern
        case brightnessValue
        case lightSource
        case flash
        case spatialFrequencyResponse
        case contrast
        case saturation
        case sharpness
        case gamma
        case whiteBalance
        case gainControl
        case imageUniqueId
        case compressedBitsPerPixel
        case colorSpace
        case pixelXDimension
        case pixelYDimension
        case relatedSoundFile
        case focalPlaneXResolution
        case focalPlaneYResolution
        case focalPlaneResolutionUnit
        case customRendered
        case compositeImage
        case oecf
        case componentsConfiguration
        case sourceImageNumberOfCompositeImage
        case fileSource
        case dateTimeOriginal
        case dateTimeDigitized
        case subsecTime
        case subsecTimeOriginal
        case subsecTimeDigitized
        case offsetTime
        case offsetTimeOriginal
        case offsetTimeDigitized
        case lensSpecification
        case lensMake
        case lensModel
        case lensSerialNumber
        case makerNote
        case userComment
        case cameraOwnerName
        case bodySerialNumber
        case flashpixVersion
        case flashEnergy
        case exifVersion
        
        var rawValue: String {
            return self.rawValueCFString as String
        }
        
        private var rawValueCFString: CFString {
            switch self {
            case .deviceSettingDescription:
                return kCGImagePropertyExifDeviceSettingDescription
                
            case .fNumber:
                return kCGImagePropertyExifFNumber
                
            case .shutterSpeedValue:
                return kCGImagePropertyExifShutterSpeedValue
                
            case .apertureValue:
                return kCGImagePropertyExifApertureValue
                
            case .maxApertureValue:
                return kCGImagePropertyExifMaxApertureValue
                
            case .focalLength:
                return kCGImagePropertyExifFocalLength
                
            case .spectralSensitivity:
                return kCGImagePropertyExifSpectralSensitivity
                
            case .isoSpeedRatings:
                return kCGImagePropertyExifISOSpeedRatings
                
            case .subjectDistance:
                return kCGImagePropertyExifSubjectDistance
                
            case .meteringMode:
                return kCGImagePropertyExifMeteringMode
                
            case .subjectArea:
                return kCGImagePropertyExifSubjectArea
                
            case .subjectLocation:
                return kCGImagePropertyExifSubjectLocation
                
            case .sensingMethod:
                return kCGImagePropertyExifSensingMethod
                
            case .sceneType:
                return kCGImagePropertyExifSceneType
                
            case .digitalZoomRatio:
                return kCGImagePropertyExifDigitalZoomRatio
                
            case .focalLengthIn35mmFilm:
                return kCGImagePropertyExifFocalLenIn35mmFilm
                
            case .sceneCaptureType:
                return kCGImagePropertyExifSceneCaptureType
                
            case .subjectDistanceRange:
                return kCGImagePropertyExifSubjectDistRange
                
            case .exposureTime:
                return kCGImagePropertyExifExposureTime
                
            case .exposureProgram:
                return kCGImagePropertyExifExposureProgram
                
            case .exposureIndex:
                return kCGImagePropertyExifExposureIndex
                
            case .exposureMode:
                return kCGImagePropertyExifExposureMode
                
            case .isoSpeed:
                return kCGImagePropertyExifISOSpeed
                
            case .isoSpeedLatitudeYYY:
                return kCGImagePropertyExifISOSpeedLatitudeyyy
                
            case .isoSpeedLatitudeZZZ:
                return kCGImagePropertyExifISOSpeedLatitudezzz
                
            case .recommendedExposureIndex:
                return kCGImagePropertyExifRecommendedExposureIndex
                
            case .exposureBiasValue:
                return kCGImagePropertyExifExposureBiasValue
                
            case .sensitivityType:
                return kCGImagePropertyExifSensitivityType
                
            case .standardOutputSensitivity:
                return kCGImagePropertyExifStandardOutputSensitivity
                
            case .sourceExposureTimesOfCompositeImage:
                return kCGImagePropertyExifSourceExposureTimesOfCompositeImage
                
            case .cfaPattern:
                return kCGImagePropertyExifCFAPattern
                
            case .brightnessValue:
                return kCGImagePropertyExifBrightnessValue
                
            case .lightSource:
                return kCGImagePropertyExifLightSource
                
            case .flash:
                return kCGImagePropertyExifFlash
                
            case .spatialFrequencyResponse:
                return kCGImagePropertyExifSpatialFrequencyResponse
                
            case .contrast:
                return kCGImagePropertyExifContrast
                
            case .saturation:
                return kCGImagePropertyExifSaturation
                
            case .sharpness:
                return kCGImagePropertyExifSharpness
                
            case .gamma:
                return kCGImagePropertyExifGamma
                
            case .whiteBalance:
                return kCGImagePropertyExifWhiteBalance
                
            case .gainControl:
                return kCGImagePropertyExifGainControl
                
            case .imageUniqueId:
                return kCGImagePropertyExifImageUniqueID
                
            case .compressedBitsPerPixel:
                return kCGImagePropertyExifCompressedBitsPerPixel
                
            case .colorSpace:
                return kCGImagePropertyExifColorSpace
                
            case .pixelXDimension:
                return kCGImagePropertyExifPixelXDimension
                
            case .pixelYDimension:
                return kCGImagePropertyExifPixelYDimension
                
            case .relatedSoundFile:
                return kCGImagePropertyExifRelatedSoundFile
                
            case .focalPlaneXResolution:
                return kCGImagePropertyExifFocalPlaneXResolution
                
            case .focalPlaneYResolution:
                return kCGImagePropertyExifFocalPlaneYResolution
                
            case .focalPlaneResolutionUnit:
                return kCGImagePropertyExifFocalPlaneResolutionUnit
                
            case .customRendered:
                return kCGImagePropertyExifCustomRendered
                
            case .compositeImage:
                return kCGImagePropertyExifCompositeImage
                
            case .oecf:
                return kCGImagePropertyExifOECF
                
            case .componentsConfiguration:
                return kCGImagePropertyExifComponentsConfiguration
                
            case .sourceImageNumberOfCompositeImage:
                return kCGImagePropertyExifSourceImageNumberOfCompositeImage
                
            case .fileSource:
                return kCGImagePropertyExifFileSource
                
            case .dateTimeOriginal:
                return kCGImagePropertyExifDateTimeOriginal
                
            case .dateTimeDigitized:
                return kCGImagePropertyExifDateTimeDigitized
                
            case .subsecTime:
                return kCGImagePropertyExifSubsecTime
                
            case .subsecTimeOriginal:
                return kCGImagePropertyExifSubsecTimeOriginal
                
            case .subsecTimeDigitized:
                return kCGImagePropertyExifSubsecTimeDigitized
                
            case .offsetTime:
                return kCGImagePropertyExifOffsetTime
                
            case .offsetTimeOriginal:
                return kCGImagePropertyExifOffsetTimeOriginal
                
            case .offsetTimeDigitized:
                return kCGImagePropertyExifOffsetTimeDigitized
                
            case .lensSpecification:
                return kCGImagePropertyExifLensSpecification
                
            case .lensMake:
                return kCGImagePropertyExifLensMake
                
            case .lensModel:
                return kCGImagePropertyExifLensModel
                
            case .lensSerialNumber:
                return kCGImagePropertyExifLensSerialNumber
                
            case .makerNote:
                return kCGImagePropertyExifMakerNote
                
            case .userComment:
                return kCGImagePropertyExifUserComment
                
            case .cameraOwnerName:
                return kCGImagePropertyExifCameraOwnerName
                
            case .bodySerialNumber:
                return kCGImagePropertyExifBodySerialNumber
                
            case .flashpixVersion:
                return kCGImagePropertyExifFlashPixVersion
                
            case .flashEnergy:
                return kCGImagePropertyExifFlashEnergy
                
            case .exifVersion:
                return kCGImagePropertyExifVersion
            }
        }
    }
}
