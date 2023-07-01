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

public struct ImageIOProperties: Codable, Equatable, Hashable {
    /// Exchangeable Image File Format (EXIF) data.
    public var exif: ExifProperty?
    
    //  MARK: - Container File Size
    public var fileSize: AnyCodable?
    
    //  MARK: - Image Information
    public var imageCount: AnyCodable?
    public var isIndexed: Bool?
    public var images: AnyCodable?
    public var thumbnailImages: AnyCodable?
    public var primaryImage: Bool?
    public var isFloat: Bool?
    public var orientation: CGImagePropertyOrientation?
    
    //  MARK: - Pixel Information
    public var pixelFormat: ExifProperty.PixelFormatType?
    public var pixelWidth: Int?
    public var pixelHeight: Int?
    public var dpiHeight: Int?
    public var dpiWidth: Int?
    public var depth: Int?
    
    //  MARK: - Color Information
    public var hasAlpha: Bool?
    public var namedColorSpace: AnyCodable?
    public var profileName: String?
    public var colorModel: String?
    public var rgb: AnyCodable?
    public var cmyk: AnyCodable?
    public var gray: AnyCodable?
    public var lab: AnyCodable?
}
