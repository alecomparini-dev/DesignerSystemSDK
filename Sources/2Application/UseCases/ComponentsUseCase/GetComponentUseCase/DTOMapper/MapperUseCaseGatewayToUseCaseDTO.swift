//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

import DSMDomain

struct MapperUseCaseGatewayToUseCaseDTO {
    
    static func mapper(_ useCaseGateway: GetComponentUseCaseGatewayDTO.Output) -> GetComponentUseCaseDTO.Output {
        let dto = GetComponentUseCaseDTO.Output(
            backgroundColor: useCaseGateway.backgroundColor,
            font: GetComponentUseCaseDTO.Font(
                family: useCaseGateway.font?.family,
                color: useCaseGateway.font?.color,
                size: useCaseGateway.font?.size,
                weight: useCaseGateway.font?.weight,
                italic: useCaseGateway.font?.italic
            )
        )
        
        return dto
    }
}
