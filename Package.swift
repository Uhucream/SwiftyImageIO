// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyCIImageProperties",
    platforms: [
        .iOS("13.1"),
        .watchOS(.v6),
        .macOS(.v10_15),
        .macCatalyst("13.1"),
        .tvOS(.v13),
    ],
    products: [
        .library(
            name: "SwiftyCIImageProperties",
            targets: ["SwiftyCIImageProperties"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/almazrafi/DictionaryCoder.git",
            from: "1.1.0"
        ),
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
