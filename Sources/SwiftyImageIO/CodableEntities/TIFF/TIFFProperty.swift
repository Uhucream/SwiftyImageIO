//
//  TIFFProperty.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

@preconcurrency import AnyCodable
import Foundation
import ImageIO

/// the Tagged Image File Format (TIFF).
public struct TIFFProperty: Codable, Equatable, Hashable, Sendable {
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
    
    init?(dictionary: Any?) {
        guard let dictionary = dictionary as? [String : Any] else { return nil }

        self.compression = dictionary[kCGImagePropertyTIFFCompression as String] as? CompressionType
        self.photometricInterpretation = dictionary[kCGImagePropertyTIFFPhotometricInterpretation as String] as? AnyCodable
        self.transferFunction = dictionary[kCGImagePropertyTIFFTransferFunction as String] as? AnyCodable
        self.orientation = dictionary[kCGImagePropertyTIFFOrientation as String] as? CGImagePropertyOrientation
        self.resolutionX = dictionary[kCGImagePropertyTIFFXResolution as String] as? Int
        self.resolutionY = dictionary[kCGImagePropertyTIFFYResolution as String] as? Int
        self.resolutionUnit = dictionary[kCGImagePropertyTIFFResolutionUnit as String] as? ResolutionUnit
        self.whitePoint = dictionary[kCGImagePropertyTIFFWhitePoint as String] as? AnyCodable
        self.primaryChromaticities = dictionary[kCGImagePropertyTIFFPrimaryChromaticities as String] as? AnyCodable
        self.tileLength = dictionary[kCGImagePropertyTIFFTileLength as String] as? Int
        self.tileWidth = dictionary[kCGImagePropertyTIFFTileWidth as String] as? Int
        self.documentName = dictionary[kCGImagePropertyTIFFDocumentName as String] as? String
        self.imageDescription = dictionary[kCGImagePropertyTIFFImageDescription as String] as? String
        self.artist = dictionary[kCGImagePropertyTIFFArtist as String] as? String
        self.copyright = dictionary[kCGImagePropertyTIFFCopyright as String] as? String
        if let dateTimeString = dictionary[kCGImagePropertyTIFFDateTime as String] as? String {
            self.dateTime = DateFormatter.tiff.date(from: dateTimeString)
        }
        self.make = dictionary[kCGImagePropertyTIFFMake as String] as? String
        self.model = dictionary[kCGImagePropertyTIFFModel as String] as? String
        self.software = dictionary[kCGImagePropertyTIFFSoftware as String] as? String
        self.hostComputer = dictionary[kCGImagePropertyTIFFHostComputer as String] as? String
    }
}
