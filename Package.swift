// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "UberRides",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "UberCore", targets: ["UberCore"]),
        .library(name: "UberRides", targets: ["UberRides"])
    ],
    targets: [
        .target(name: "UberRides", dependencies: ["UberCore"], path: "source/UberRides"),
        .target(name: "UberCore", dependencies: [], path: "source/UberCore")
    ]
)
