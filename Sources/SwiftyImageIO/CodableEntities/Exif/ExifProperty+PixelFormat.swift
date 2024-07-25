//
//  ExifProperty+PixelFormat.swift
//
//  
//  Created by TakashiUshikoshi on 2023/06/30
//  
//

import Foundation

public extension ExifProperty {
    enum PixelFormatType: Int, Codable, Sendable {
        case blackWhite = 0x5
        
        case _8BitGray = 0x8
        
        case _16BitBGR555 = 0x9
        
        case _16BitBGR565 = 0xa
        
        case _16BitGray = 0xb
        
        case _24BitBGR = 0xc
        
        case _24BitRGB = 0xd
        
        case _32BitBGR = 0xe
        
        case _32BitBGRA = 0xf
        
        case _32BitPBGRA = 0x10
        
        case _32BitGrayFloat = 0x11
        
        case _48BitRGBFixedPoint = 0x12
        
        case _32BitBGR101010 = 0x13
        
        case _48BitRGB = 0x15
        
        case _64BitRGBA = 0x16
        
        case _64BitPRGBA = 0x17
        
        case _96BitRGBFixedPoint = 0x18
        
        case _128BitRGBAFloat = 0x19
        
        case _128BitPRGBAFloat = 0x1a
        
        case _128BitRGBFloat = 0x1b
        
        case _32BitCMYK = 0x1c
        
        case _64BitRGBAFixedPoint = 0x1d
        
        case _128BitRGBAFixedPoint = 0x1e
        
        case _64BitCMYK = 0x1f
        
        case _24Bit3Channels = 0x20
        
        case _32Bit4Channels = 0x21
        
        case _40Bit5Channels = 0x22
        
        case _48Bit6Channels = 0x23
        
        case _56Bit7Channels = 0x24
        
        case _64Bit8Channels = 0x25
        
        case _48Bit3Channels = 0x26
        
        case _64Bit4Channels = 0x27
        
        case _80Bit5Channels = 0x28
        
        case _96Bit6Channels = 0x29
        
        case _112Bit7Channels = 0x2a
        
        case _128Bit8Channels = 0x2b
        
        case _40BitCMYKAlpha = 0x2c
        
        case _80BitCMYKAlpha = 0x2d
        
        case _32Bit3ChannelsAlpha = 0x2e
        
        case _40Bit4ChannelsAlpha = 0x2f
        
        case _48Bit5ChannelsAlpha = 0x30
        
        case _56Bit6ChannelsAlpha = 0x31
        
        case _64Bit7ChannelsAlpha = 0x32
        
        case _72Bit8ChannelsAlpha = 0x33
        
        case _64Bit3ChannelsAlpha = 0x34
        
        case _80Bit4ChannelsAlpha = 0x35
        
        case _96Bit5ChannelsAlpha = 0x36
        
        case _112Bit6ChannelsAlpha = 0x37
        
        case _128Bit7ChannelsAlpha = 0x38
        
        case _144Bit8ChannelsAlpha = 0x39
        
        case _64BitRGBAHalf = 0x3a
        
        case _48BitRGBHalf = 0x3b
        
        case _32BitRGBE = 0x3d
        
        case _16BitGrayHalf = 0x3e
        
        case _32BitGrayFixedPoint = 0x3f
    }
}
