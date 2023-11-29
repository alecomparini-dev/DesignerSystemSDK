//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMPresenters
import DSMUseCase
import DSMUseCaseGateway
import MemoryCache

open class CustomSwitchSecondary: SwitchBuilder {
    private static let identifier = "customSwitchSecondary"
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }
    
    public convenience init(isOn: Bool) {
        self.init()
        self.setIsOn(isOn)
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        
        let memoryCache = ComponentMemoryCache.shared
        
        let getComponentUseCaseGateway = MemoryGetComponentUseCaseGatewayImpl(memoryCache: memoryCache)
        
        let getComponentUseCase = GetComponentUseCaseImpl(getComponentUseCaseGateway: getComponentUseCaseGateway)
        
        let presenter = CustomSwitchSecondaryPresenterImpl(getComponentUseCase: getComponentUseCase, customSwitch: self)
        
        presenter.get(name: CustomSwitchSecondary.identifier)
    }
        
}

