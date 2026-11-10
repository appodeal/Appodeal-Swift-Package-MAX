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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.7.0"),
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
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/AppodealAppLovinMAXAdapter/13.7.0.0/b8a8b90fed4b/AppodealAppLovinMAXAdapter.xcframework.zip",
            checksum: "b8a8b90fed4b452ef0258172eed239af8cd18022aa2739e17352b8c47736cd6e"
        ),

    ]
)
