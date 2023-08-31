// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "DesignerSystemSDK",
    platforms: [
        .iOS(.v14),
        .driverKit(.v19),
        .macCatalyst(.v16),
        .macOS(.v10_15)
    ],
    
    products: [
        .library( name: "DesignerSystemSDK",
                  targets: ["DomainLayer",
                            "ApplicationLayer",
                            "InterfaceAdapterLayer",
                            "DetailLayer"]),
    ],
  
    dependencies: [
        .package(url: "https://github.com/alecomparini-dev/CustomComponentsSDK.git", branch: "develop")
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
