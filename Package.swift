// swift-tools-version:5.5
/**
 *  RandomProjectName
 *  Copyright (c) NLUDB, Inc. 2021
 *  Licensed under the MIT license. See LICENSE file.
 */

import PackageDescription

let package = Package(
    name: "RandomProjectName",
    products: [
        .library(name: "RandomProjectName", targets: ["RandomProjectName"])
    ],
    targets: [
        .target(
            name: "RandomProjectName",
            path: "Sources"
        ),
        .testTarget(
            name: "RandomProjectNameTests",
            dependencies: ["RandomProjectName"]
        )
    ]
)
