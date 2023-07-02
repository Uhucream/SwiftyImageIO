//
//  ImageIOProperties+CodingKeys.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation
import ImageIO

extension ImageIOProperties {
    enum CodingKeys: String, CodingKey {
        case exif
        
        case gps

        //  MARK: - Container File Size
        case fileSize
        
        //  MARK: - Image Information
        case imageCount
        case isIndexed
        case images
        case thumbnailImages
        case primaryImage
        case isFloat
        case orientation
        
        //  MARK: - Pixel Information
        case pixelFormat
        case pixelWidth
        case pixelHeight
        case dpiHeight
        case dpiWidth
        case depth
        
        //  MARK: - Color Information
        case hasAlpha
        case namedColorSpace
        case profileName
        case colorModel
        case rgb
        case cmyk
        case gray
        case lab
        
        var rawValue: String {
            return self.rawValueCFString as String
        }
        
        private var rawValueCFString: CFString {
            switch self {
            case .exif:
                return kCGImagePropertyExifDictionary
                
            case .gps:
                return kCGImagePropertyGPSDictionary
                
            case .fileSize:
                return kCGImagePropertyFileSize
                
            case .imageCount:
                return kCGImagePropertyImageCount
                
            case .isIndexed:
                return kCGImagePropertyIsIndexed
                
            case .images:
                return kCGImagePropertyImages
                
            case .thumbnailImages:
                return kCGImagePropertyThumbnailImages
                
            case .primaryImage:
                return kCGImagePropertyPrimaryImage
                
            case .isFloat:
                return kCGImagePropertyIsFloat
                
            case .orientation:
                return kCGImagePropertyOrientation
                
            case .pixelFormat:
                return kCGImagePropertyPixelFormat
                
            case .pixelWidth:
                return kCGImagePropertyPixelWidth
                
            case .pixelHeight:
                return kCGImagePropertyPixelHeight
                
            case .dpiHeight:
                return kCGImagePropertyDPIHeight
                
            case .dpiWidth:
                return kCGImagePropertyDPIWidth
                
            case .depth:
                return kCGImagePropertyDepth
                
            case .hasAlpha:
                return kCGImagePropertyHasAlpha
                
            case .namedColorSpace:
                return kCGImagePropertyNamedColorSpace
                
            case .profileName:
                return kCGImagePropertyProfileName
                
            case .colorModel:
                return kCGImagePropertyColorModel
                
            case .rgb:
                return kCGImagePropertyColorModelRGB
                
            case .cmyk:
                return kCGImagePropertyColorModelCMYK
                
            case .gray:
                return kCGImagePropertyColorModelGray
                
            case .lab:
                return kCGImagePropertyColorModelLab

            }
        }
    }
}
