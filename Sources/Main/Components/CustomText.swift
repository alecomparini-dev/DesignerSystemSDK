//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMPresenters
import DSMUseCase
import DSMUseCaseGateway


open class CustomText: LabelBuilder {
    private static let identifier = "customText"
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        let getComponentUseCaseGateway = MemoryGetComponentUseCaseGatewayImpl()
        let getComponentUseCase = GetComponentUseCaseImpl(getComponentUseCaseGateway: getComponentUseCaseGateway)
        let presenter = CustomTextPresenterImpl(getComponentUseCase: getComponentUseCase, customText: self)
        presenter.get(name: CustomText.identifier)
    }
        
}
