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
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CreateCustomerSDK",
            path: "./Frameworks/CreateCustomerSDK.xcframework"
        )
    ]
)
