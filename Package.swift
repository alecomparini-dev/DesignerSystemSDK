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
        .library(name: "DesignerSystemSDK",  targets: ["DesignerSystem"]),
    ],
  
    dependencies: [
        .package(url: "https://github.com/alecomparini-dev/NetworkSDK.git", branch: "develop"),
        .package(url: "https://github.com/alecomparini-dev/CustomComponentsSDK.git", branch: "develop")
    ],

    
    targets: [

        
        //MARK: - DOMAIN LAYER
        .target(
            name: "Domain",
            dependencies: [],
            path: "Sources/1Domain"
        ),
    
    
        //MARK: - APPLICATION BUSINESS RULE LAYER
        .target(
            name: "UseCase",
            dependencies: ["Domain"],
            path: "Sources/2Application/UseCases"
        ),
        
        
        //MARK: - INTERFACE ADAPTER LAYER
        .target(
            name: "DesignerSystem",
            dependencies: ["Presenters"],
            path: "Sources/3InterfaceAdapter/DesignerSystem"
        ),

        
        
        .target(
            name: "Presenters",
            dependencies: ["UseCase"],
            path: "Sources/3InterfaceAdapter/Presenters"
        ),
        
        .target(
            name: "UseCaseGateway",
            dependencies: [
                "UseCase",
                .product(name: "Network" , package: "NetworkSDK")
            ],
            path: "Sources/3InterfaceAdapter/UseCaseGateway"
        ),
    

        //  MARK: - DETAILS LAYER
        .target(
            name: "UI",
            dependencies: [
                "Presenters",
                .product(name: "CustomComponentsSDK" , package: "CustomComponentsSDK")
            ],
            path: "Sources/4Detail/UI"
        ),

        
        //  MARK: - TESTS TARGETS AREA
        
    
        .testTarget(name: "DomainLayerTests", dependencies: ["Domain"] ),
        
        
    ]
)
