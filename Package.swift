// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EasyBili",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "EasyBili",
            targets: ["EasyBili"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EasyBili",
            dependencies: []),
        .testTarget(
            name: "EasyBiliTests",
            dependencies: ["EasyBili"]),
    ]
)
