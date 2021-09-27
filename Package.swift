// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-duktape",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "swift-duktape",
            targets: [
                "swift-duktape"
            ]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CDuktape",
            dependencies: [],
            path: "Sources/CDuktape",
            exclude: ["swift-duktape"],
            publicHeadersPath: "include/"
//            cSettings: [
//                .headerSearchPath("include/")
//            ]
        ),
        .target(
            name: "swift-duktape",
            dependencies: [
                "CDuktape"
            ],
            path: "Sources/swift-duktape",
            exclude: [
                "Upstream/"
            ]
        )
    ]
)
