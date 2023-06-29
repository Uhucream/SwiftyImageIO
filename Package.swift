// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyCIImageProperties",
    products: [
        .library(
            name: "SwiftyCIImageProperties",
            targets: ["SwiftyCIImageProperties"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swhitty/DictionaryDecoder", .upToNextMajor(from: "0.22.0"))
    ],
    targets: [
        .target(
            name: "SwiftyCIImageProperties"
        ),
        .testTarget(
            name: "SwiftyCIImagePropertiesTests",
            dependencies: ["SwiftyCIImageProperties"]
        ),
    ]
)
