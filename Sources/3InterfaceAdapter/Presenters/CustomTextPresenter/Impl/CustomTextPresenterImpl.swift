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

    
    public func get(id: Int) -> LabelBuilder {
        
        let dto: CustomTextUseCaseDTO.Output? = customTextUseCase.get(id: id)
        
        guard let dto else { return LabelBuilder() }
        
//        let customText: LabelBuilder = LabelBuilder()
        self.customText
            .setSize(dto.font?.size)
            .setColor(hexColor: dto.font?.color)
            .setWeight(K.Weight(rawValue: dto.font?.weight?.rawValue ?? K.Default.weight.rawValue))
            .setFontFamily(dto.font?.family, dto.font?.size)

        return customText
    }
    
    public func get(name: String) -> LabelBuilder {
//        let dto: CustomTextUseCaseDTO.Output? = customTextUseCase.get(name: name)
//        guard let dto else { return LabelBuilder() }
//
        
        return LabelBuilder()
    }
    
    public func get(uuid: String) -> LabelBuilder {
//        let dto: CustomTextUseCaseDTO.Output? = customTextUseCase.get(uuid: uuid)
//        guard let dto else { return LabelBuilder() }
//
        return LabelBuilder()
    }
    
}
