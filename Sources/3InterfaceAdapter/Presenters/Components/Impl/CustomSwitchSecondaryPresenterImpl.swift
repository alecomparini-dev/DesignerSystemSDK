//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation
import CustomComponentsSDK
import DSMUseCase

public class CustomSwitchSecondaryPresenterImpl: ComponentPresenter {
    
    private let getComponentUseCase: GetComponentUseCase
    
    private let customSwitch: SwitchBuilder
    
    public init(getComponentUseCase: GetComponentUseCase, customSwitch: SwitchBuilder) {
        self.getComponentUseCase = getComponentUseCase
        self.customSwitch = customSwitch
    }
    
    
//  MARK: - PUBLIC AREA
    
    public func get(id: Int) {
        let dto: ComponentDTO? = getComponentUseCase.get(id: id)
        configComponent(dto)
    }
    
    public func get(name: String) {
        let dto: ComponentDTO? = getComponentUseCase.get(name: name)
        configComponent(dto)
    }
    
    
//  MARK: - PRIVATE AREA
    private func configComponent(_ dto: ComponentDTO?) {
        guard let dto else { return }
        self.customSwitch
            .setIsOn(false)
            .setOnTintColor(hexColor: dto.backgroundColor)
            .setThumbTintColor(hexColor: dto.font?.color)
    }
    
}
