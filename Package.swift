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
        .package(url: "https://github.com/appodeal/Appodeal-Swift-Package.git", exact: "4.3.0-alpha.16"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-SDK-iOS.git", from: "13.0.0"),
    ],
    targets: [
        .target(
            name: "AppodealAppLovinMAXAdapterWrapper",
            dependencies: [
                .product(name: "AppodealSDK", package: "Appodeal-Swift-Package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-SDK-iOS"),
                .target(name: "AppodealAppLovinMAXAdapter"),
            ],
            path: "Sources",
            sources: ["Exports.swift"]
        ),
        .binaryTarget(
            name: "AppodealAppLovinMAXAdapter",
            url: "https://s3-us-west-1.amazonaws.com/appodeal-ios/Appodeal/SPM/AppodealAppLovinMAXAdapter/1.0.0/AppodealAppLovinMAXAdapter.xcframework.zip",
            checksum: "PLACEHOLDER_CHECKSUM"
        ),
    ]
)