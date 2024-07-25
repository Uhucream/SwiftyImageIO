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
        
        formatter.dateFormat = "yyyy:MM:dd HH:mm:ss"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.locale = NSLocale.system //Locale(identifier: "en_US_POSIX")
        
        return formatter
    }
}

