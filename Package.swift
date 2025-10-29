// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RaylibSwift",
    platforms: [
        .macOS(.v26)
    ],
    products: [
        .library(
            name: "RaylibSwift",
            targets: ["RaylibSwift"]
        ),
    ],
    targets: [
        .executableTarget(
            name: "RaylibExample", 
            dependencies: ["RaylibSwift"]
        ),
        .target(
            name: "RaylibSwift",
            dependencies: ["raylib"],
            linkerSettings: [
                .linkedFramework("CoreVideo"),
                .linkedFramework("IOKit"), 
                .linkedFramework("Cocoa")
                ]
        ),
        .binaryTarget(
            name: "raylib",
            path: "External/raylib.artifactbundle"
        ),
        
//        .testTarget(
//            name: "RaylibSwiftTests",
//            dependencies: ["RaylibSwift"]
//        ),
    ]
)
