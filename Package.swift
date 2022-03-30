// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "authing",
    products: [
        .library(
            name: "signing",
            targets: ["signing"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "signing",
            dependencies: [
            ]),
        .testTarget(
            name: "signingTests",
            dependencies: ["signing"]),
    ]
)
