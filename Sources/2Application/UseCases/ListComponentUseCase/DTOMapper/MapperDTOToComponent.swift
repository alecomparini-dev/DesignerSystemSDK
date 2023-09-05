//  Created by Alessandro Comparini on 05/09/23.
//

import Foundation

import DSMDomain
import SharedEnums

struct MapperDTOToComponent {
    
    static func mapper(_ dto: [ListComponentsUseCaseGatewayDTO.Output]) -> [Component] {
        let component = dto.map {
            Component(uuid: $0.uuid,
                      id: $0.id,
                      themeId: $0.themeId,
                      name: $0.name,
                      active: $0.active,
                      backgroundColor: $0.backgroundColor ?? "transparent",
                      font: FontComponent(
                        size: $0.font?.size ?? 14,
                        color: $0.font?.color ?? "#000000",
                        family: $0.font?.family,
                        weight: FontWeight(rawValue: $0.font?.weight ?? 3)
                      )
            )
            
        }
        return component
    }
}
