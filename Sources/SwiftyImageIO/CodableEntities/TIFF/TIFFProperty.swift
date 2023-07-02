//
//  TIFFProperty.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import AnyCodable
import Foundation
import ImageIO

/// the Tagged Image File Format (TIFF).
public struct TIFFProperty: Codable, Equatable, Hashable {
    //  MARK: - Image Quality
    
    /// The compression scheme used on the image data.
    public var compression: CompressionType?
    
    /// The color space of the image data.
    public var photometricInterpretation: AnyCodable?
    
    /// The transfer function, in tabular format, used to map pixel components from a nonlinear form into a linear form.
    public var transferFunction: AnyCodable?
    
    //  MARK: - Canvas Details
    
    /// The image orientation.
    public var orientation: CGImagePropertyOrientation?
    
    /// The number of pixels per resolution unit in the image width direction.
    public var resolutionX: Int?
    
    /// The number of pixels per resolution unit in the image height direction.
    public var resolutionY: Int?
    
    /// The units of resolution.
    public var resolutionUnit: ResolutionUnit?
    
    /// The white point of the image.
    public var whitePoint: AnyCodable?
    
    /// The chromaticities of the primaries of the image.
    public var primaryChromaticities: AnyCodable?
    
    public var tileLength: Int?
    
    public var tileWidth: Int?
    
    //  MARK: - Descriptive Information
    
    /// The document name.
    public var documentName: String?
    
    /// The image description.
    public var imageDescription: String?
    
    /// The artist who created the image.
    public var artist: String?
    
    /// Copyright information.
    public var copyright: String?
    
    /// The date and time that the image was created.
    public var dateTime: Date?
    
    /// The name of the manufacturer of the camera or input device.
    public var make: String?
    
    /// The camera or input device model.
    public var model: String?
    
    /// The name and version of the software used for image creation.
    public var software: String?
    
    /// The computer or operating system used when the image was created.
    public var hostComputer: String?
}
