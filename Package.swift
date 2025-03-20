// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "JobInterviewAssignmentKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "JobInterviewAssignmentKit", targets: ["JobInterviewAssignmentKit"])
    ],
    targets: [
        .target(
            name: "JobInterviewAssignmentKit",
            path: "Source"
        ),
        .testTarget(
            name: "JobInterviewAssignmentKitTest",
            dependencies: ["JobInterviewAssignmentKit"],
            path: "Test"
        )
    ]
)
