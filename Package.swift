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
        .library(
            name: "RxASDataSourcesTestKit",
            targets: ["RxASDataSourcesTestKit"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RxASDataSources",
            dependencies: ["AsyncDisplayKit", "Differentiator", "libwebp", "PINCache", "PINOperation", "PINRemoteImage", "RxCocoa", "RxDataSources", "RxRelay", "RxSwift"],
            path: "./Sources/DataSources"),
        .target(
            name: "RxASDataSourcesTestKit",
            dependencies: ["RxBlocking", "RxTest"]),
        .binaryTarget(name: "AsyncDisplayKit", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/AsyncDisplayKit.xcframework.zip", checksum: "569cf5603cc3e7125f2bf84dbb0fc6f887f87cab241db8599eff539153732123"),
        .binaryTarget(name: "Differentiator", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/Differentiator.xcframework.zip", checksum: "aba2760ee22544bdfccc4cd156128946f7d3e5e3383efed12ac65aa9e646bd14"),
        .binaryTarget(name: "libwebp", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/libwebp.xcframework.zip", checksum: "2ea1722259dd7a989cf7e0bb99e01973e2e5fde10b78ed8f623e9b1ad1745e61"),
        .binaryTarget(name: "PINCache", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/PINCache.xcframework.zip", checksum: "be8b417606835cc9b58ad920f791d6555406fecccd92201edb2657c72b6921b4"),
        .binaryTarget(name: "PINOperation", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/PINOperation.xcframework.zip", checksum: "2340a84b112912d36e363d635a07656e931cd59300a6b27d67e5f07b3fec8062"),
        .binaryTarget(name: "PINRemoteImage", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/PINRemoteImage.xcframework.zip", checksum: "59d2cd9aac4843d1e26cd737b2fa05363cf004b80f29de8339631e986ea7c322"),
        .binaryTarget(name: "RxCocoa", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/RxCocoa.xcframework.zip", checksum: "e756920fe1321174279fe27cffc930c6f9f0cb259db184931b5ff892da3b93a1"),
        .binaryTarget(name: "RxDataSources", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/RxDataSources.xcframework.zip", checksum: "39871ea11708a14ecf21d572da7076a8f92ef5df6748518a4fcc24f583af22fc"),
        .binaryTarget(name: "RxRelay", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/RxRelay.xcframework.zip", checksum: "16fa4db88a24257bf72f4e8638a4e92a0a6ad56834c9af03a89c6e5671869ae0"),
        .binaryTarget(name: "RxSwift", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/RxSwift.xcframework.zip", checksum: "ea5c6656ce66be45f7611631721ec3f4261bccd55a070cfc0d4128712230e441"),
        .binaryTarget(name: "RxBlocking", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/RxBlocking.xcframework.zip", checksum: "b7f4d5974df036e98a4d14114873ce7f7a687e41287d4d46e56a296194c62962"),
        .binaryTarget(name: "RxTest", url: "https://github.com/shimastripe/RxASDataSources/releases/download/3.0.0-xcframework/RxTest.xcframework.zip", checksum: "c0031437947023f9b69b95ec3709a975fa6d111a290554e902d2d0a5b4864e89"),
    ]
)
