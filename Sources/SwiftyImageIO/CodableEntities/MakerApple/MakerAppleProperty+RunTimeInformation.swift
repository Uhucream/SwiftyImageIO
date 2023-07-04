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
        
        let epoch: Int?
        
        let flags: Int?
        
        let timescale: Int?
        
        let value: Int?
    }
}
