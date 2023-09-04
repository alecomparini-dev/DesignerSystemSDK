//
//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit
import DSMDomain
import DSMPresenters
import DSMUseCase
import CustomComponentsSDK


open class CustomText {
    
    private let id: Int
    private var customText: LabelBuilder
    
    var get: LabelBuilder { self.customText }
    
    
//  MARK: - INITIALIZERS
    public init(id: Int) {
        self.customText = LabelBuilder()
        self.id = id
        configure()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
//  MARK: - PRIVATE AREA
    private func configure() {
        let cacheManager = CacheManager.shared
        let useCase: CustomTextUseCase = CustomTextUseCaseImpl(cacheManager: cacheManager)
        let presenter = CustomTextPresenterImpl(customTextUseCase: useCase)
//        let presenter = CustomTextPresenterImpl()
        self.customText = presenter.get(id: self.id)
    }
        
}
