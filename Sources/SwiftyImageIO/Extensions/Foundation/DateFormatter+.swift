//
//  DateFormatter+.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

extension DateFormatter {
    static var tiff: DateFormatter {
        let formatter: DateFormatter = .init()
        
        formatter.locale = NSLocale.system
        formatter.dateFormat = "yyyy:MM:dd HH:mm:ss"
        
        return formatter
    }
}

