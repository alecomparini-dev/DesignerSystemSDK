//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

import DSMDomain

struct MapperComponentToDTO {
    
    static func mapper(_ comp: Component) -> CustomTextUseCaseDTO.Output {
        let dto = CustomTextUseCaseDTO.Output(
            backgroundColor: comp.backgroundColor,
            font: CustomTextUseCaseDTO.Font(
                family: comp.font?.family,
                color: comp.font?.color,
                size: comp.font?.size,
                weight: comp.font?.weight
            )
        )
        
        return dto
    }
}
