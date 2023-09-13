//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation
import CustomComponentsSDK
import DSMUseCase

public class CustomTextTitlePresenterImpl: ComponentPresenter {
    
    private let getComponentUseCase: GetComponentUseCase
    
    private let customTextTitle: LabelBuilder
    
    public init(getComponentUseCase: GetComponentUseCase, customTextTitle: LabelBuilder) {
        self.getComponentUseCase = getComponentUseCase
        self.customTextTitle = customTextTitle
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
        self.customTextTitle
            .setSize(dto.font?.size)
            .setColor(hexColor: dto.font?.color)
            .setColor(named: dto.font?.color)
            .setBackgroundColor(named: dto.backgroundColor)
            .setBackgroundColor(hexColor: dto.backgroundColor)
            .setWeight(K.Weight(rawValue: dto.font?.weight?.rawValue ?? K.Default.weight.rawValue))
            .setFontFamily(dto.font?.family, dto.font?.size)
    }
    
}
