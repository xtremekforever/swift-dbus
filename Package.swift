// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DBus",
    products: [
        .library(
            name: "DBus",
            targets: ["DBus"]
        )
    ],
    targets: [
        .systemLibrary(
            name: "CDBus"
        ),
        .target(
            name: "DBus",
            dependencies: ["CDBus"]
        ),
        .testTarget(
            name: "DBusTests",
            dependencies: ["DBus"]
        ),
    ]
)
