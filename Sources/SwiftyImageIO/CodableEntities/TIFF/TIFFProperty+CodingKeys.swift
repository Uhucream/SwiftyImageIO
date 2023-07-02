//
//  TIFFProperty+CodingKeys.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation
import ImageIO

extension TIFFProperty {
    enum CodingKeys: String, CodingKey {
        case compression
        case photometricInterpretation
        case transferFunction
        
        case orientation
        case resolutionX
        case resolutionY
        case resolutionUnit
        case whitePoint
        case primaryChromaticities
        case tileLength
        case tileWidth
        
        case documentName
        case imageDescription
        case artist
        case copyright
        case dateTime
        case make
        case model
        case software
        case hostComputer
        
        var rawValue: String {
            return self.rawValueCFString as String
        }
        
        private var rawValueCFString: CFString {
            switch self {
            case .compression:
                return kCGImagePropertyTIFFCompression
                
            case .photometricInterpretation:
                return kCGImagePropertyTIFFPhotometricInterpretation
                
            case .transferFunction:
                return kCGImagePropertyTIFFTransferFunction
                
            case .orientation:
                return kCGImagePropertyTIFFOrientation
                
            case .resolutionX:
                return kCGImagePropertyTIFFXResolution
                
            case .resolutionY:
                return kCGImagePropertyTIFFYResolution
                
            case .resolutionUnit:
                return kCGImagePropertyTIFFResolutionUnit
                
            case .whitePoint:
                return kCGImagePropertyTIFFWhitePoint
                
            case .primaryChromaticities:
                return kCGImagePropertyTIFFPrimaryChromaticities
                
            case .tileLength:
                return kCGImagePropertyTIFFTileLength
                
            case .tileWidth:
                return kCGImagePropertyTIFFTileWidth
                
            case .documentName:
                return kCGImagePropertyTIFFDocumentName
                
            case .imageDescription:
                return kCGImagePropertyTIFFImageDescription
                
            case .artist:
                return kCGImagePropertyTIFFArtist
                
            case .copyright:
                return kCGImagePropertyTIFFCopyright
                
            case .dateTime:
                return kCGImagePropertyTIFFDateTime
                
            case .make:
                return kCGImagePropertyTIFFMake
                
            case .model:
                return kCGImagePropertyTIFFModel
                
            case .software:
                return kCGImagePropertyTIFFSoftware
                
            case .hostComputer:
                return kCGImagePropertyTIFFHostComputer

            }
        }
    }
}
