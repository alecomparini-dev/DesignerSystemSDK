//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMDomain
import DSMPresenters
import DSMUseCase


open class CustomView: ViewBuilder {
    private static let identifier = "customView"
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        let cacheManager = CacheManagerDomain.shared
        let getComponentUseCase = GetComponentUseCaseImpl(cacheManager: cacheManager)
        let presenter = CustomViewPresenterImpl(getComponentUseCase: getComponentUseCase, customView: self)
        presenter.get(name: CustomView.identifier)
    }
        
}
