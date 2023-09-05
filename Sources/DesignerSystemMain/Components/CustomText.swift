//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMDomain
import DSMPresenters
import DSMUseCase


open class CustomText: LabelBuilder {
    private static let identifier = "customText"
    
    private let cacheManager = CacheManager.shared
    private let name: String = ""
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
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
        presenter.get(name: CustomText.identifier)
    }
        
}
