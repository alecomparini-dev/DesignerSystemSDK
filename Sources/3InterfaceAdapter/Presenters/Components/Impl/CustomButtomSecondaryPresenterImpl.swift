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
        
        customButtom
            .setTitleSize(dto.font?.size)
            .setTitleColor(hexColor: dto.font?.color)
            .setTitleColor(named: dto.font?.color)
            .setTitleWeight(K.Weight(rawValue: dto.font?.weight?.rawValue ?? K.Default.weight.rawValue))
            .setFontFamily(dto.font?.family, dto.font?.size)
            .setBorder { build in
                build
                    .setCornerRadius(16)
            }

        if dto.themeId == 3 {
            customButtom
                .setBorder { build in
                    build
                        .setWidth(2)
                        .setColor(hexColor: dto.backgroundColor)
                }
        } else {
            customButtom
                .setBackgroundColor(named: dto.backgroundColor)
                .setBackgroundColor(hexColor: dto.backgroundColor)
        }

        if dto.font?.italic ?? false {
            customButtom.setItalicFont()
        }
    }
    
}
