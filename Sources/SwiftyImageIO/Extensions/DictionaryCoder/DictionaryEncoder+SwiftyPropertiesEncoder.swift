//
//  DictionaryEncoder+SwiftyPropertiesEncoder.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import DictionaryCoder

extension DictionaryEncoder {
    static var swiftyPropertiesEncoder: DictionaryEncoder {
        let dictionaryEncoder: DictionaryEncoder = .init()
        
        dictionaryEncoder.dateEncodingStrategy = .formatted(.tiff)
        
        return dictionaryEncoder
    }
}
