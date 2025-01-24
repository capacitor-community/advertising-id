// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorCommunityAdvertisingId",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorCommunityAdvertisingId",
            targets: ["AdvertisingIdPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "AdvertisingIdPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/AdvertisingIdPlugin"),
        .testTarget(
            name: "AdvertisingIdPluginTests",
            dependencies: ["AdvertisingIdPlugin"],
            path: "ios/Tests/AdvertisingIdPluginTests")
    ]
)
