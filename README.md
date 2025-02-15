# SwiftyImageIO
A library to make CIImage.properties type-safe with Codable

## Motivation

There are many process for modifying exif of photo on Swift like this:

```swift
import CoreImage
import Foundation
import ImageIO

extension DateFormatter {
    static var tiff: DateFormatter {
	let formatter: DateFormatter = .init()

	formatter.locale = NSLocale.system
	formatter.dateFormat =  "yyyy:MM:dd HH:mm:ss"

	return formatter
    }
}

let testCIImage: CIImage? = .init(contentsOf: URL(string: "file:///path/to/image"))

// Get a dictionary which contains exif dictionary
guard var imageProperties: [String: Any] = testCIImage?.properties else { return }

// Get dictionary of exif
var exifDictionary: [String: Any]? = imageProperties[kCGImagePropertyExifDictionary as String] as? [String: Any]

// modify dictionary of exif
exifDictionary?[kCGImagePropertyExifDateTimeDigitized as String] = DateFormatter.tiff.date(from: .now)

// modify dictionary which is parent dictionary of exif
imageProperties[kCGImagePropertyExifDictionary as String] = exifDictionary

// Generate a new CIImage which exif is modified
let metadataModifiedCIImage: CIImage = testCIImage?.settingProperties(imageProperties)
```

It's annoying.

This library solves this annoying amount process for modifying exif.


## Usage

If you want to modify the digitized date of photo, you can write like this.

```swift
let testCIImage: CIImage? = .init(contentsOf: URL(string: "file:///path/to/image"))

guard var imageProperties: ImageIOProperties = testCIImage?.swiftyImageProperties else { return }

imageProperties.exif?.dateTimeDigitized = .now

let metadataModifiedCIImage: CIImage? = try? testCIImage?.settingProperties(imageProperties)
```
