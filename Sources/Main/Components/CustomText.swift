//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMDomain
import DSMPresenters
import DSMUseCase


open class CustomText: LabelBuilder {
    private static let identifier = "customText"
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        let cacheManager = CacheManager.shared
        let getComponentUseCase = GetComponentUseCaseImpl(cacheManager: cacheManager)
        let presenter = CustomTextPresenterImpl(getComponentUseCase: getComponentUseCase, customText: self)
        presenter.get(name: CustomText.identifier)
    }
        
}
