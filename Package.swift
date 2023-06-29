// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyCIImageProperties",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftyCIImageProperties",
            targets: ["SwiftyCIImageProperties"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swhitty/DictionaryDecoder", .upToNextMajor(from: "0.22.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftyCIImageProperties"),
        .testTarget(
            name: "SwiftyCIImagePropertiesTests",
            dependencies: ["SwiftyCIImageProperties"]),
    ]
)
