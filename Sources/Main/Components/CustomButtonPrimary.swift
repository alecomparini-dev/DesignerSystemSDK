//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMDomain
import DSMPresenters
import DSMUseCase


open class CustomButtonPrimary: ButtonBuilder {
    private static let identifier = "customButtonPrimary"
    
    private let getComponentUseCase = GetComponentUseCaseImpl(cacheManager: CacheManager.shared)

    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        let presenter = CustomButtomPrimaryPresenterImpl(getComponentUseCase: getComponentUseCase, customButtom: self)
        
        presenter.get(name: CustomButtonPrimary.identifier)
    }
        
}

