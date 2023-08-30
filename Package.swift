// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "designersystemsdk",
    platforms: [
        .iOS(.v14),
        .driverKit(.v19),
        .macCatalyst(.v16),
        .macOS(.v10_15)
    ],
    
    products: [
        .library( name: "designersystemsdk",
                  targets: ["DomainLayer",
                            "ApplicationLayer",
                            "InterfaceAdapterLayer",
                            "DetailLayer"]),
    ],
  
    dependencies: [
        .package(url: "https://github.com/alecomparini-dev/custom-component-sdk.git", branch: "develop"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: Version(stringLiteral: "5.7.1")))
    ],

    targets: [
        
        .target(name: "DomainLayer", dependencies: []),
        .target(name: "ApplicationLayer", dependencies: ["DomainLayer"]),
        .target(name: "InterfaceAdapterLayer", dependencies: ["ApplicationLayer"]),
        .target(name: "DetailLayer", dependencies: ["InterfaceAdapterLayer", "CustomComponentsSDK"]),
        
    
        .testTarget(name: "DomainLayerTests", dependencies: ["DomainLayer"] ),
        .testTarget(name: "ApplicationLayerTests", dependencies: ["ApplicationLayer", "DomainLayer"] ),
        .testTarget(name: "InterfaceAdapterLayerTests", dependencies: ["InterfaceAdapterLayer", "ApplicationLayer"]),
        .testTarget(name: "DetailLayerTests", dependencies: ["DetailLayer", "InterfaceAdapterLayer"] ),
        
        
        
    ]
)
