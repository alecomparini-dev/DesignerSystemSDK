//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMPresenters
import DSMUseCase
import DSMUseCaseGateway
import MemoryCache


open class CustomTextTitle: LabelBuilder {
    private static let identifier = "customTextTitle"
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        let memoryCache = ComponentMemoryCache.shared
        
        let getComponentUseCaseGateway = MemoryGetComponentUseCaseGatewayImpl(memoryCache: memoryCache)
        
        let getComponentUseCase = GetComponentUseCaseImpl(getComponentUseCaseGateway: getComponentUseCaseGateway)
        
        let presenter = CustomTextTitlePresenterImpl(getComponentUseCase: getComponentUseCase, customTextTitle: self)
        
        presenter.get(name: CustomTextTitle.identifier)
    }
        
}
