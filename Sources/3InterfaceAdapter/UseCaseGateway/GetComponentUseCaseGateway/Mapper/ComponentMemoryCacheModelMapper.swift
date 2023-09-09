//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation
import DSMUseCase

struct ComponentMemoryCacheModelMapper {
    
    static func mapperToDTO(model: ComponentMemoryCacheModel ) -> GetComponentUseCaseGatewayDTO.Output {
        
        let dto = GetComponentUseCaseGatewayDTO.Output(
            backgroundColor: model.backgroundColor,
            font: GetComponentUseCaseGatewayDTO.Font(
                family: model.font?.family,
                color: model.font?.color,
                size: model.font?.size,
                weight: model.font?.weight,
                italic: model.font?.italic))
        
        return dto
    }
    
}
