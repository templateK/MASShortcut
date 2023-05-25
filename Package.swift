// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "MASShortcut",
    platforms: [
        .macOS(.v10_11),
    ],
    products: [
        .library(name: "MASShortcut",
                 targets: ["MASShortcut"])
    ],
    targets: [
        .target(
            name: "MASShortcut",
            path: "Framework",
            exclude: [
                "Model/MASShortcutTests.m",
                "Monitoring/MASHotKeyTests.m",
                "Monitoring/MASShortcutMonitorTests.m",
                "User Defaults Storage/MASDictionaryTransformerTests.m",
                "User Defaults Storage/MASShortcutBinderTests.m",
                "Info.plist",
                "MASShortcut.modulemap",
                "Prefix.pch"
            ],
            publicHeadersPath: "include"
        )
    ],
    swiftLanguageVersions: [.v5]
)
