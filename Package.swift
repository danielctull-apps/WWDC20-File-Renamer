// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "WWDC20 File Renamer",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .executable(name: "FileRenamer", targets: ["FileRenamer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.6"),
    ],
    targets: [
        .target(name: "FileRenamer", dependencies: [
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
        ]),
    ]
)
