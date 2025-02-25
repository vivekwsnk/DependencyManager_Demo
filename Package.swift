// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DependencyManager_Demo",
    platforms: [.iOS(.v15)],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.10.0"),  // Downgraded from 5.6.0
        .package(url: "https://github.com/WenchaoD/FSCalendar.git", from: "2.8.4")   // Downgraded from 2.8.4
    ],
    targets: [
        .target(
            name: "DependencyManager_Demo",
            dependencies: ["Alamofire", "FSCalendar"]
        )
    ]
)

