//
//  CGImagePropertyOrientation+CustomStringConvertible.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/01
//  
//

import ImageIO

extension CGImagePropertyOrientation: @retroactive CustomStringConvertible {
    public var description: String {        
        switch self {
        case .up:
            return "up"
            
        case .upMirrored:
            return "upMirrored"
            
        case .down:
            return "down"
            
        case .downMirrored:
            return "downMirrored"
            
        case .leftMirrored:
            return "leftMirrored"
            
        case .right:
            return "right"
            
        case .rightMirrored:
            return "rightMirrored"
            
        case .left:
            return "left"
        }
    }
}
