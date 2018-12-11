// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Configurable",
    products: [
        .library(name: "Configurable", targets: ["Configurable"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Configurable", dependencies: []),
        .testTarget(name: "ConfigurableTests", dependencies: ["Configurable"]),
    ]
)
