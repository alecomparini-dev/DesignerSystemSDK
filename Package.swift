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
        .library(name: "DSMComponent",  targets: ["DSMComponent"]),
        .library(name: "DSMMain",  targets: ["DSMMain"])
    ],
  
    dependencies: [
        .package(url: "https://github.com/alecomparini-dev/NetworkSDK.git", branch: "develop"),
        .package(url: "https://github.com/alecomparini-dev/CustomComponentsSDK.git", branch: "develop")
    ],
    
    
    targets: [
        
        
        
//MARK: - DOMAIN
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
        
        
        
//MARK: - APPLICATION
        .target(
            name: "DSMUseCase",
            dependencies: ["DSMDomain"],
            path: "Sources/2Application/UseCases"
        ),
        

        
//MARK: - INTERFACE ADAPTER
        
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
        
        
        
//  MARK: - DETAILS
        
        .target(
            name: "Network",
            dependencies: [
                "DSMUseCaseGateway",
                .product(name: "NetworkSDK" , package: "NetworkSDK")
            ],
            path: "Sources/4Details/Network"
        ),


        
        
        
//  MARK: - MAIN LAYER
        
        .target(
            name: "DSMComponent",
            dependencies: [
                "DSMPresenters",
                .product(name: "CustomComponentsSDK" , package: "CustomComponentsSDK")
            ],
            path: "Sources/DesignerSystemMain/Components"
        ),
        
            
        .target(
            name: "DSMMain",
            dependencies: [
                "DesignerSystemAdapter", "Network"
            ],
            path: "Sources/DesignerSystemMain/DSMMain"
        ),
        

        
        
        
        //  MARK: - TESTS TARGETS AREA
        
        .testTarget(name: "DomainLayerTests", dependencies: ["DSMDomain"] ),
        
    ]
    
)
