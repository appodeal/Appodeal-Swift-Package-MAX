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
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/AppodealAppLovinMAXAdapter/13.6.4.0/4e71af420c4d/AppodealAppLovinMAXAdapter.xcframework.zip",
            checksum: "4e71af420c4d64d663b161c4c0cd6a517afecefcf495dec47a46b56aae4e288c"
        ),

    ]
)
