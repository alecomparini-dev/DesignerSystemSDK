//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit

import CustomComponentsSDK
import DSMPresenters
import DSMUseCase
import DSMUseCaseGateway


open class CustomButtonSecondary: ButtonBuilder {
    private static let identifier = "customButtonSecundary"
    
    
//  MARK: - INITIALIZERS
    
    public override init() {
        super.init()
        configure()
    }

    
//  MARK: - PRIVATE AREA
    private func configure() {
        let getComponentUseCaseGateway = MemoryGetComponentUseCaseGatewayImpl()
        let getComponentUseCase = GetComponentUseCaseImpl(getComponentUseCaseGateway: getComponentUseCaseGateway)
        let presenter = CustomButtomSecondaryPresenterImpl(getComponentUseCase: getComponentUseCase, customButtom: self)
        presenter.get(name: CustomButtonSecondary.identifier)
    }
        
}

