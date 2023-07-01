//
//  DictionaryDecoder+ImagePropertiesDecoder.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import DictionaryCoder

extension DictionaryDecoder {
    static var imagePropertiesDecoder: DictionaryDecoder {
        let decoder: DictionaryDecoder = .init()

        decoder.dateDecodingStrategy = .formatted(.tiff)

        return decoder
    }
}
