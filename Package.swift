// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxASDataSources",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "RxASDataSources",
            targets: ["RxASDataSources"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: .init(6, 5, 0))),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", .upToNextMajor(from: .init(5, 0, 2))),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RxASDataSources",
            dependencies: ["AsyncDisplayKit",
                           "libwebp",
                           "PINCache",
                           "PINOperation",
                           "PINRemoteImage",
                           .product(name: "RxCocoa", package: "RxSwift"),
                           .product(name: "RxRelay", package: "RxSwift"),
                           .product(name: "RxSwift", package: "RxSwift"),
                           .product(name: "Differentiator", package: "RxDataSources"),
                           .product(name: "RxDataSources", package: "RxDataSources"),
            ],
            path: "./Sources/DataSources"),
        .binaryTarget(name: "AsyncDisplayKit", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/AsyncDisplayKit.xcframework.zip", checksum: "569cf5603cc3e7125f2bf84dbb0fc6f887f87cab241db8599eff539153732123"),
        .binaryTarget(name: "libwebp", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/libwebp.xcframework.zip", checksum: "2ea1722259dd7a989cf7e0bb99e01973e2e5fde10b78ed8f623e9b1ad1745e61"),
        .binaryTarget(name: "PINCache", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/PINCache.xcframework.zip", checksum: "be8b417606835cc9b58ad920f791d6555406fecccd92201edb2657c72b6921b4"),
        .binaryTarget(name: "PINOperation", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/PINOperation.xcframework.zip", checksum: "2340a84b112912d36e363d635a07656e931cd59300a6b27d67e5f07b3fec8062"),
        .binaryTarget(name: "PINRemoteImage", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/PINRemoteImage.xcframework.zip", checksum: "59d2cd9aac4843d1e26cd737b2fa05363cf004b80f29de8339631e986ea7c322"),
    ]
)
