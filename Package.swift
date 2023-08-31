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
        .library(name: "DesignSystemDomain",  targets: ["DesignSystemDomain"]),
        .library(name: "DesignSystemUseCase", targets: ["DesignSystemUseCase"]),
        .library(name: "DesignerSystemPresenters", targets: ["DesignerSystemPresenters"]),
        .library(name: "DesignerSystemUseCaseGateway", targets: ["DesignerSystemUseCaseGateway"]),
        .library(name: "DesignerSystemUI", targets: ["DesignerSystemUI"]),
    ],
  
    dependencies: [
        .package(url: "https://github.com/alecomparini-dev/NetworkSDK.git", branch: "develop"),
        .package(url: "https://github.com/alecomparini-dev/CustomComponentsSDK.git", branch: "develop")
    ],

    
    targets: [

        //MARK: - DOMAIN LAYER
        .target(
            name: "DesignSystemDomain",
            dependencies: [],
            path: "Sources/Layer1_Domain"
        ),
    
    
        //MARK: - APPLICATION BUSINESS RULE LAYER
        .target(
            name: "DesignSystemUseCase",
            dependencies: [],
            path: "Sources/Layer2_Application/UseCases"
        ),
        
        
        //MARK: - INTERFACE ADAPTER LAYER
        .target(
            name: "DesignerSystemPresenters",
            dependencies: ["DesignSystemUseCase"],
            path: "Sources/Layer3_InterfaceAdapter/Presenters"
        ),
        
        .target(
            name: "DesignerSystemUseCaseGateway",
            dependencies: [
                "DesignSystemUseCase",
                .product(name: "Network" , package: "NetworkSDK")
            ],
            path: "Sources/Layer3_InterfaceAdapter/UseCaseGateway"
        ),
    

        //  MARK: - DETAILS LAYER
        .target(
            name: "DesignerSystemUI",
            dependencies: [
                "DesignerSystemPresenters",
                .product(name: "CustomComponentsSDK" , package: "CustomComponentsSDK")
            ],
            path: "Sources/Layer4_Detail/UI"
        ),

        
        //  MARK: - TESTS TARGETS AREA
        
    
        .testTarget(name: "DomainLayerTests", dependencies: ["DesignSystemDomain"] ),
        
        
    ]
)
