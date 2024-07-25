//
//  TIFFProperty+CompressionType.swift
//
//  
//  Created by TakashiUshikoshi on 2023/07/02
//  
//

import Foundation

public extension TIFFProperty {
    enum CompressionType: Int, Codable, Hashable, Sendable {
        case uncompressed = 1
        case ccitt1D = 2
        case t4Group3Fax = 3
        case t6Group4Fax = 4
        case lzw = 5
        case jpegOldStyle = 6
        case jpegNewStyle = 7
        case adobeDeflate = 8
        case jbigBW = 9
        case jbigColor = 10
        case jpeg = 99
        case kodak262 = 262
        case next = 32766
        case sonyARWCompressed = 32767
        case packedRAW = 32769
        case samsungSRWCompressed = 32770
        case ccirlew = 32771
        case samsungSRWCompressed2 = 32772
        case packBits = 32773
        case thunderscan = 32809
        case kodakKDCCompressed = 32867
        case it8CTPAD = 32895
        case it8LW = 32896
        case it8MP = 32897
        case it8BL = 32898
        case pixarFilm = 32908
        case pixarLog = 32909
        case deflate = 32946
        case dcs = 32947
        case aperioJpeg2000YCbCr = 33003
        case aperioJpeg2000RGB = 33005
        case jbig = 34661
        case sgiLog = 34676
        case sgiLog24 = 34677
        case jpeg2000 = 34712
        case nikonNEFCompressed = 34713
        case jbig2TiffFx = 34715
        case microsoftDocumentImagingBinaryLevelCodec = 34718
        case microsoftDocumentImagingProgressiveTransformCodec = 34719
        case microsoftDocumentImagingVector = 34720
        case esriLerc = 34887
        case lossyJPEG = 34892
        case lzma2 = 34925
        case zstd = 34926
        case webP = 34927
        case png = 34933
        case jpegXR = 34934
        case kodakDCRCompressed = 65000
        case pentaxPEFCompressed = 65535
    }
}
