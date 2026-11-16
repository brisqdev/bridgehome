// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "BridgeHome",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "BridgeHome",
            targets: ["BridgeHome"]
        )
    ],
    targets: [
        .target(
            name: "BridgeHome",
            path: "BridgeHome"
        )
    ]
)

