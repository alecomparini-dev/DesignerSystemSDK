//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation
import CustomComponentsSDK
import DSMUseCase

public class CustomButtomSecondaryPresenterImpl: ComponentPresenter {
    
    private let getComponentUseCase: GetComponentUseCase
    
    private let customButtom: ButtonBuilder
    
    public init(getComponentUseCase: GetComponentUseCase, customButtom: ButtonBuilder) {
        self.getComponentUseCase = getComponentUseCase
        self.customButtom = customButtom
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
    
    public func get(uuid: String) {
        let dto: GetComponentUseCaseDTO.Output? = getComponentUseCase.get(uuid: uuid)
        configComponent(dto)
    }
    
    
//  MARK: - PRIVATE AREA
    
    private func configComponent(_ dto: GetComponentUseCaseDTO.Output?) {
        
        guard let dto else { return }
        
        customButtom
            .setTitleSize(dto.font?.size)
            .setTitleColor(hexColor: dto.font?.color)
            .setTitleColor(named: dto.font?.color)
            .setBackgroundColor(named: dto.backgroundColor)
            .setBackgroundColor(hexColor: dto.backgroundColor)
            .setTitleWeight(K.Weight(rawValue: dto.font?.weight?.rawValue ?? K.Default.weight.rawValue))
            .setFontFamily(dto.font?.family, dto.font?.size)
        
            .setBorder { build in
                build
                    .setCornerRadius(12)
            }
        
        if dto.font?.italic ?? false {
            customButtom.setItalicFont()
        }
    }
    
}
