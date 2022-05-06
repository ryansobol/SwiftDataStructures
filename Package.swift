// swift-tools-version: 5.6

import PackageDescription

let package = Package(
  name: "SwiftDataStructures",
  products: [
    .library(
      name: "SwiftDataStructures",
      targets: ["SwiftDataStructures"]
    ),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "SwiftDataStructures",
      dependencies: []
    ),
    .testTarget(
      name: "SwiftDataStructuresTests",
      dependencies: ["SwiftDataStructures"]
    ),
  ]
)
