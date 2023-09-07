//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

import DSMDomain

struct MapperComponentToDTO {
    
    static func mapper(_ comp: Component) -> GetComponentUseCaseDTO.Output {
        let dto = GetComponentUseCaseDTO.Output(
            backgroundColor: comp.backgroundColor,
            font: GetComponentUseCaseDTO.Font(
                family: comp.font?.family,
                color: comp.font?.color,
                size: comp.font?.size,
                weight: comp.font?.weight,
                italic: comp.font?.italic
            )
        )
        
        return dto
    }
}
