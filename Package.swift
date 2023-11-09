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
        .library(name: "DesignerSystemSDKMain",  targets: ["DesignerSystemSDKMain"]),
        .library(name: "DesignerSystemSDKComponent",  targets: ["DesignerSystemSDKComponent"])
    ],
  
    dependencies: [
        .package(url: "https://github.com/alecomparini-dev/NetworkSDK.git", branch: "develop"),
        .package(url: "https://github.com/alecomparini-dev/CustomComponentsSDK.git", branch: "feature/Improvements")
    ],
    
    
    targets: [
        
        //MARK: - 1 DOMAIN
        .target(
            name: "SharedEnums",
            dependencies: [],
            path: "Sources/1Domain/SharedEnums"
        ),
    
        .target(
            name: "DSMDomain",
            dependencies: ["SharedEnums"],
            path: "Sources/1Domain/Domain"
        ),
        
        
        //MARK: - 2 APPLICATION
        .target(
            name: "DSMUseCase",
            dependencies: ["DSMDomain"],
            path: "Sources/2Application/UseCases"
        ),
        
        
        //MARK: - 3 INTERFACE ADAPTER
        .target(
            name: "DSMPresenters",
            dependencies: [
                "DSMUseCase"
            ],
            path: "Sources/3InterfaceAdapter/Presenters"
        ),
        
        .target(
            name: "DSMUseCaseGateway",
            dependencies: [
                "DSMUseCase",
            ],
            path: "Sources/3InterfaceAdapter/UseCaseGateway"
        ),
    
        .target(
            name: "DesignerSystemAdapter",
            dependencies: [
                "DSMUseCase"
            ],
            path: "Sources/3InterfaceAdapter/DesignerSystemAdapter"
        ),
        
        
        //  MARK: - 4 DETAILS
        .target(
            name: "Network",
            dependencies: [
                "DSMUseCaseGateway",
                .product(name: "NetworkSDKMain" , package: "NetworkSDK")
            ],
            path: "Sources/4Details/Network"
        ),
        
        .target(
            name: "MemoryCache",
            dependencies: [
                "DSMUseCaseGateway",
            ],
            path: "Sources/4Details/MemoryCache"
        ),

        
        //  MARK: - MAIN LAYER
        .target(
            name: "DesignerSystemSDKMain",
            dependencies: [
                "DesignerSystemAdapter", 
                "Network"
            ],
            path: "Sources/Main/DSMMain"
        ),

       .target(
            name: "DesignerSystemSDKComponent",
            dependencies: [
                "DSMPresenters", 
                "MemoryCache",
                .product(name: "CustomComponentsSDK" , package: "CustomComponentsSDK")
            ],
            path: "Sources/Main/Components"
        ),
        
        
        
        
        //  MARK: - TESTS TARGETS AREA
        
        .testTarget(name: "DomainLayerTests", dependencies: ["DSMDomain"] ),
        
    ]
    
)
