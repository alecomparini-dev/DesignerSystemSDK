//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMPresenters
import DSMUseCase
import DSMUseCaseGateway
import MemoryCache

open class CustomButtonSecondary: ButtonImageBuilder {
    private static let identifier = "customButtonSecondary"
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }
    
    public override init(_ title: String) {
        super.init(title)
        configure()
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        
        let memoryCache = ComponentMemoryCache.shared
        
        let getComponentUseCaseGateway = MemoryGetComponentUseCaseGatewayImpl(memoryCache: memoryCache)
        
        let getComponentUseCase = GetComponentUseCaseImpl(getComponentUseCaseGateway: getComponentUseCaseGateway)
        
        let presenter = CustomButtomSecondaryPresenterImpl(getComponentUseCase: getComponentUseCase, customButtom: self)
        
        presenter.get(name: CustomButtonSecondary.identifier)
    }
        
}

