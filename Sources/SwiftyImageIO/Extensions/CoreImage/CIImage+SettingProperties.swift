//
//  CIImage+.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import CoreImage
import DictionaryCoder
import Foundation

public extension CIImage {
    /// Returns a new image created by adding the specified metadata properties to the image.
    /// - Parameter properties: The metadata properties to associate with the image.
    /// - Returns: An image object with the specified properties.
    func settingProperties(_ properties: CIImage.Properties) throws -> CIImage {
        let dictionaryEncodedProperties = try DictionaryEncoder.swiftyPropertiesEncoder.encode(properties)

        let propertiesModifiedImage: CIImage = self.settingProperties(dictionaryEncodedProperties)

        return propertiesModifiedImage
    }
}
