//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMDomain
import DSMPresenters
import DSMUseCase


open class CustomButtonSecondary: ButtonBuilder {
    private static let identifier = "customButtonSecundary"
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        let cacheManager = CacheManagerDomain.shared
        let getComponentUseCase = GetComponentUseCaseImpl(cacheManager: cacheManager)
        let presenter = CustomButtomSecondaryPresenterImpl(getComponentUseCase: getComponentUseCase, customButtom: self)
        presenter.get(name: CustomButtonSecondary.identifier)
    }
        
}

