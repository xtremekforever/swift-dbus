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
            name: "CDBus",
            pkgConfig: "dbus-1",
            providers: [
                .brew(["dbus"]),
                .apt(["libdbus-1-dev"])
            ]
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
