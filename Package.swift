// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "authing",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "authing",
            targets: ["authing"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "authing",
            dependencies: [
            ]
        ),
        .testTarget(
            name: "authingTests",
            dependencies: ["authing"]
        ),
    ]
)
