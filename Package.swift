// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterVKTL",
    products: [
        .library(name: "TreeSitterVKTL", targets: ["TreeSitterVKTL"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterVKTL",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterVKTLTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterVKTL",
            ],
            path: "bindings/swift/TreeSitterVKTLTests"
        )
    ],
    cLanguageStandard: .c11
)
