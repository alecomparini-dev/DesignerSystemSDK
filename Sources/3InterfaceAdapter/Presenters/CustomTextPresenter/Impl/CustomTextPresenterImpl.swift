//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation
import CustomComponentsSDK
import DSMUseCase

public class CustomTextPresenterImpl: CustomTextPresenter {
    
    private let customTextUseCase: CustomTextUseCase
    
    private let customText: LabelBuilder
    
    public init(customTextUseCase: CustomTextUseCase, customText: LabelBuilder) {
        self.customTextUseCase = customTextUseCase
        self.customText = customText
    }
    
    
//  MARK: - PUBLIC AREA
    
    public func get(id: Int) {
        let dto: CustomTextUseCaseDTO.Output? = customTextUseCase.get(id: id)
        configComponent(dto)
    }
    
    public func get(name: String) {
        let dto: CustomTextUseCaseDTO.Output? = customTextUseCase.get(name: name)
        configComponent(dto)
    }
    
    public func get(uuid: String) {
        let dto: CustomTextUseCaseDTO.Output? = customTextUseCase.get(uuid: uuid)
        configComponent(dto)
    }
    
    
//  MARK: - PRIVATE AREA
    private func configComponent(_ dto: CustomTextUseCaseDTO.Output?) {
        guard let dto else { return }
        self.customText
            .setSize(dto.font?.size)
            .setColor(hexColor: dto.font?.color)
            .setWeight(K.Weight(rawValue: dto.font?.weight?.rawValue ?? K.Default.weight.rawValue))
            .setFontFamily(dto.font?.family, dto.font?.size)
    }
    
}
