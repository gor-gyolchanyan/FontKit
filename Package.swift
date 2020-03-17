// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "FontKit",
    products: [
        .library(
            name: "FontKit",
            targets: ["FontKit"]
        ),
    ],
    targets: [
        .target(
            name: "FontKit"
        ),
        .testTarget(
            name: "FontKit.Test",
            dependencies: ["FontKit"]
        ),
    ]
)
