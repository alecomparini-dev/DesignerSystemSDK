//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation
import CustomComponentsSDK
import DSMUseCase

public class CustomViewPresenterImpl: ComponentPresenter {
    
    private let getComponentUseCase: GetComponentUseCase
    
    private let customView: ViewBuilder
    
    public init(getComponentUseCase: GetComponentUseCase, customView: ViewBuilder) {
        self.getComponentUseCase = getComponentUseCase
        self.customView = customView
    }
    
    
//  MARK: - PUBLIC AREA
    
    public func get(id: Int) {
        let dto: GetComponentUseCaseDTO.Output? = getComponentUseCase.get(id: id)
        configComponent(dto)
    }
    
    public func get(name: String) {
        let dto: GetComponentUseCaseDTO.Output? = getComponentUseCase.get(name: name)
        configComponent(dto)
    }
    
    
    
//  MARK: - PRIVATE AREA
    private func configComponent(_ dto: GetComponentUseCaseDTO.Output?) {
        guard let dto else { return }
        self.customView
            .setBackgroundColor(named: dto.backgroundColor)
            .setBackgroundColor(hexColor: dto.backgroundColor)
    }
    
}
