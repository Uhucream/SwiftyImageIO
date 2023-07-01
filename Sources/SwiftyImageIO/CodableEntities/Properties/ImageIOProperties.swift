//
//  CoreImageProperties.swift
//  
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import AnyCodable
import Foundation
import ImageIO

/// Properties that apply to the container in general, and not necessarily to an individual image in the container.
public struct ImageIOProperties: Codable, Equatable, Hashable {
    /// Exchangeable Image File Format (EXIF) data.
    public var exif: ExifProperty?
    
    //  MARK: - Container File Size
    
    /// The size of the image file in bytes, if known.
    public var fileSize: AnyCodable?
    
    //  MARK: - Image Information
    
    /// The number of images in the file.
    public var imageCount: AnyCodable?
    
    /// A Boolean value that indicates whether the image contains indexed pixel samples.
    public var isIndexed: Bool?
    
    /// An array of dictionaries, each of which contains metadata for one of the images in the file.
    public var images: AnyCodable?
    
    public var thumbnailImages: AnyCodable?
    
    /// The index of the primary image in the file.
    public var primaryImage: Int?
    
    /// A Boolean value that indicates whether the image contains floating-point pixel samples.
    public var isFloat: Bool?
    
    /// The intended display orientation of the image.
    public var orientation: CGImagePropertyOrientation?
    
    //  MARK: - Pixel Information
    
    /// The format of the image’s individual pixels.
    public var pixelFormat: ExifProperty.PixelFormatType?
    
    /// The number of pixels along the x-axis of the image.
    public var pixelWidth: Int?
    
    /// The number of pixels along the y-axis of the image.
    public var pixelHeight: Int?
    
    /// The resolution, in dots per inch, in the y dimension.
    public var dpiHeight: Int?
    
    /// The resolution, in dots per inch, in the x dimension.
    public var dpiWidth: Int?
    
    /// The number of bits in the color sample of a pixel.
    public var depth: Int?
    
    //  MARK: - Color Information
    
    /// A Boolean value that indicates whether the image has an alpha channel.
    public var hasAlpha: Bool?
    
    /// The name of the image’s color space.
    public var namedColorSpace: AnyCodable?
    
    /// The name of the optional International Color Consortium (ICC) profile embedded in the image, if known.
    public var profileName: String?
    
    /// The color model of the image, such as RGB, CMYK, grayscale, or Lab.
    public var colorModel: String?
    
    /// A Red Green Blue (RGB) color model.
    public var rgb: AnyCodable?
    
    /// A Cyan Magenta Yellow Black (CMYK) color model.
    public var cmyk: AnyCodable?
    
    /// A grayscale color model.
    public var gray: AnyCodable?
    
    /// A Lab color model, where color values contain the amount of light and the amounts of four human-perceivable colors.
    public var lab: AnyCodable?
}
