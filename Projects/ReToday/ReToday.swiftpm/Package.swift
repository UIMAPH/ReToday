// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "reToday",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "reToday",
            targets: ["AppModule"],
            bundleIdentifier: "pccommen.ReToday",
            teamIdentifier: "VT6KC94KM7",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            accentColor: .presetColor(.teal),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            capabilities: [
                .fileAccess(.pictureFolder, mode: .readWrite),
                .fileAccess(.moviesFolder, mode: .readWrite),
                .fileAccess(.downloadsFolder, mode: .readWrite),
                .fileAccess(.userSelectedFiles, mode: .readWrite),
                .fileAccess(.musicFolder, mode: .readWrite),
                .photoLibrary(purposeString: "Is okay?")
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)