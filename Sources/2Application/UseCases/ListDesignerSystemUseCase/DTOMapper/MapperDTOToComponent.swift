//  Created by Alessandro Comparini on 05/09/23.
//

import Foundation

import DSMDomain
import SharedEnums

struct MapperDTOToComponent {
    
    static func mapper(_ dto: [ListDesignerSystemUseCaseGatewayDTO.Output]) -> [ComponentDTO] {
        let component = dto.map {
            ComponentDTO(id: $0.id,
                         name: $0.name,
                         backgroundColor: $0.backgroundColor ?? "transparent",
                         font: FontDTO( family: $0.font?.family,
                                        color: $0.font?.color ?? "#000000",
                                        size: $0.font?.size ?? 14,
                                        weight: fontWeightAdapter($0.font?.weight) ,
                                        italic: $0.font?.weight == 1 )
            )
            
        }
        return component
    }
    
    static private func fontWeightAdapter(_ weight: Int?) -> FontWeight {
        
        switch weight {
            case 0:
                return .bold
            case 1:
                return .regular
            case 2:
                return .black
            case 3:
                return .regular
            case 4:
                return .thin
            case 5:
                return .medium
            default:
                return .regular
        }
        
    }
}
