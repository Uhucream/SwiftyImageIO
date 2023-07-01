//
//  CIImage+SwiftyImageProperties.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import CoreImage
import DictionaryCoder

public extension CIImage {
    /// A decoded struct containing metadata about the image.
    /// 
    /// It returns `nil` if the decoding of [properties](https://developer.apple.com/documentation/coreimage/ciimage/1437733-properties) fails.
    var swiftyImageProperties: CIImage.Properties? {
        let dictionaryDecoder: DictionaryDecoder = .init()
        
        dictionaryDecoder.dateDecodingStrategy = .formatted(.tiff)
        
        let decodedProperties: CIImage.Properties? = try? dictionaryDecoder.decode(
            CIImage.Properties.self,
            from: self.properties
        )
        
        return decodedProperties
    }
}
