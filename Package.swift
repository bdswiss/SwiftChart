// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwiftChart",
    platforms: [ .iOS(.v8) ],
    products: [
        .library(name: "SwiftChart", targets: ["SwiftChart"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SwiftChart",
                path: "Source")
    ],
    swiftLanguageVersions: [.v4_2, .v5]
)
