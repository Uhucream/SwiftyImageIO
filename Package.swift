// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyImageIO",
    platforms: [
        .iOS("13.1"),
        .watchOS(.v6),
        .macOS("10.15.1"),
        .macCatalyst("13.1"),
        .tvOS(.v13),
    ],
    products: [
        .library(
            name: "SwiftyImageIO",
            targets: ["SwiftyImageIO"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/almazrafi/DictionaryCoder.git",
            from: "1.1.0"
        ),
        .package(
            url: "https://github.com/Flight-School/AnyCodable",
            from: "0.6.7"
        ),
        .package(
            url: "https://github.com/apple/swift-docc-plugin",
            from: "1.1.0"
        ),
    ],
    targets: [
        .target(
            name: "SwiftyImageIO",
            dependencies: [
                .product(name: "AnyCodable", package: "AnyCodable"),
                .product(name: "DictionaryCoder", package: "DictionaryCoder"),
            ]
        ),
        .testTarget(
            name: "SwiftyImageIOTests",
            dependencies: ["SwiftyImageIO"]
        ),
    ]
)
