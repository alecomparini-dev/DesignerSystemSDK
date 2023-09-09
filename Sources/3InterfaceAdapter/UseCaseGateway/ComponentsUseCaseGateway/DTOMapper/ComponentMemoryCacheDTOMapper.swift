//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation
import DSMUseCase

struct ComponentMemoryCacheDTOMapper {
    
    static func mapper(_ dto: ComponentMemoryCacheDTO ) -> ComponentDTO {
        
        let dto = ComponentDTO (
            id: dto.id,
            name: dto.name,
            backgroundColor: dto.backgroundColor,
            font: FontDTO(
                family: dto.font?.family,
                color: dto.font?.color,
                size: dto.font?.size,
                weight: dto.font?.weight,
                italic: dto.font?.italic))
        
        return dto
    }
    
}
