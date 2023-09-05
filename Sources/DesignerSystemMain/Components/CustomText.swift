//
//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMDomain
import DSMPresenters
import DSMUseCase


open class CustomText: LabelBuilder {
    private let cacheManager = CacheManager.shared
    private let id: Int
    private let name: String = ""
    
    
//  MARK: - INITIALIZERS
    
    public init(id: Int) {
        self.id = id
        super.init()
        configure()
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
//  MARK: - PRIVATE AREA
    private func configure() {
        let useCase: CustomTextUseCase = CustomTextUseCaseImpl(cacheManager: cacheManager)
        let presenter = CustomTextPresenterImpl(customTextUseCase: useCase, customText: self)
        presenter.get(id: self.id)
    }
        
}
