// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AppodealAppLovinMAXAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppodealAppLovinMAXAdapter",
            targets: ["AppodealAppLovinMAXAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/appodeal/Appodeal-Swift-Package.git", .upToNextMajor(from: "4.3.0")),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
    ],
    targets: [
        .target(
            name: "AppodealAppLovinMAXAdapterWrapper",
            dependencies: [
                .product(name: "AppodealSDK", package: "Appodeal-Swift-Package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .target(name: "AppodealAppLovinMAXAdapter"),
            ],
            path: "Sources",
            sources: ["Exports.swift"]
        ),
        .binaryTarget(
            name: "AppodealAppLovinMAXAdapter",
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/AppodealAppLovinMAXAdapter/13.6.2.1/AppodealAppLovinMAXAdapter.xcframework.zip",
            checksum: "bff5451c39614b0d5debe669068fea072ac0b665a8ed6a7a3f2f86cccf640c40"
        ),
    ]
)
