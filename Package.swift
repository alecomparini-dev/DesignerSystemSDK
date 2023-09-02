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
        .library(name: "DesignerSystemSDK",  targets: ["DesignerSystemMain"]),
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
            dependencies: ["UseCase"],
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
        
        .target(
            name: "NetworkSDK",
            dependencies: [
                "UseCaseGateway",
                .product(name: "NetworkSDK" , package: "NetworkSDK")
            ],
            path: "Sources/4Detail/NetworkSDK"
        ),


        
        //  MARK: - MAIN LAYER
        .target(
            name: "DesignerSystemMain",
            dependencies: [
                "UseCaseGateway"
            ],
            path: "Sources/DesignerSystemMain"
        ),

        
        
        
        //  MARK: - TESTS TARGETS AREA
        
    
        .testTarget(name: "DomainLayerTests", dependencies: ["Domain"] ),
        
        
    ]
)
