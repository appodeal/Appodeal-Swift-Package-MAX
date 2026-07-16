# Appodeal AppLovin MAX Adapter - Swift Package

Swift Package Manager distribution for Appodeal's AppLovin MAX adapter.

## Installation

### Swift Package Manager

Add this package dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/appodeal/Appodeal-Swift-Package-MAX.git", from: "1.0.0")
]
```

Then add the product to your target:

```swift
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "AppodealAppLovinMAXAdapter", package: "Appodeal-Swift-Package-MAX")
        ]
    )
]
```

### Xcode

1. In Xcode, go to **File → Add Package Dependencies**
2. Enter the repository URL: `https://github.com/appodeal/Appodeal-Swift-Package-MAX.git`
3. Choose your version requirements (e.g., "Up to Next Major Version" from 1.0.0)
4. Add the package to your project

## Requirements

- iOS 15.0+
- Xcode 15.0+
- Swift 5.9+

## Dependencies

This package includes:
- Appodeal SDK (core)
- AppLovin SDK
- AppLovin MAX mediation adapters

## Usage

After installation, the adapter will be automatically registered with Appodeal SDK. No additional configuration is required beyond the standard Appodeal initialization.

```swift
import Appodeal

// Initialize Appodeal with your app key
Appodeal.initialize(withApiKey: "YOUR_APP_KEY", types: .interstitial)
```

## Versioning

The adapter version follows the format: `X.Y.Z.R` where:
- `X.Y.Z` - AppLovin SDK version
- `R` - Adapter revision

## License

See [LICENSE](LICENSE) for details.

## Support

For issues related to:
- This Swift Package: [Create an issue](https://github.com/appodeal/Appodeal-Swift-Package-MAX/issues)
- Appodeal SDK: [Appodeal Support](https://support.appodeal.com)
- AppLovin SDK: [AppLovin Support](https://support.applovin.com)