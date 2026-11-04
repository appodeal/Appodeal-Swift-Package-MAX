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
        .package(url: "https://github.com/appodeal/Appodeal-Swift-Package.git", "4.4.2"..<"5.0.0"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.6.4"),
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
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/AppodealAppLovinMAXAdapter/13.6.4.4/4add64e065f9/AppodealAppLovinMAXAdapter.xcframework.zip",
            checksum: "4add64e065f95395a2f7f03b8c30c6dee87adbd340241b5ea03dc90b800ceac3"
        ),

    ]
)
