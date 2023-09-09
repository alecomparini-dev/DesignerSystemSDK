//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMPresenters
import DSMUseCase
import DSMUseCaseGateway


open class CustomView: ViewBuilder {
    private static let identifier = "customView"
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        let getComponentUseCaseGateway = MemoryGetComponentUseCaseGatewayImpl()
        let getComponentUseCase = GetComponentUseCaseImpl(getComponentUseCaseGateway: getComponentUseCaseGateway)
        let presenter = CustomViewPresenterImpl(getComponentUseCase: getComponentUseCase, customView: self)
        presenter.get(name: CustomView.identifier)
    }
        
}
