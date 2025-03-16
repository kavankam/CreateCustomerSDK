// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "CreateCustomerSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CreateCustomerSDK",
            targets: ["CreateCustomerSDK"]
        )
    ],
    dependencies: [
        // Add dependency on FPKYCSDK from GitHub.
        .package(url: "https://github.com/HSMDeveloper/FPKYCSDK.git", from: "1.0.0")
    ],
    targets: [
        // Your binary target that wraps your compiled framework.
        .binaryTarget(
            name: "CreateCustomerSDKBinary",
            path: "./Frameworks/CreateCustomerSDK.xcframework"
        ),
        // Your main target now depends on both your binary and on the FPKYCSDK product.
        .target(
            name: "CreateCustomerSDK",
            dependencies: [
                "CreateCustomerSDKBinary",
                .product(name: "FPKYCSDK", package: "FPKYCSDK")
            ],
            path: "Sources/CreateCustomerSDKPackage" // specify your custom folder path here
        )
    ]
)



