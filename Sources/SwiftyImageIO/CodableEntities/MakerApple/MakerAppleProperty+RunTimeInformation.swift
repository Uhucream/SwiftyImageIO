//
//  MakerAppleProperty+RunTimeInformation.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/04
//  
//

import Foundation
import AnyCodable

public extension MakerAppleProperty {
    struct RunTimeInformation: Codable, Identifiable {
        public var id: UUID {
            return .init()
        }
        
        public let epoch: Int?
        
        public let flags: Int?
        
        public let timescale: Int?
        
        public let value: Int?
    }
}
