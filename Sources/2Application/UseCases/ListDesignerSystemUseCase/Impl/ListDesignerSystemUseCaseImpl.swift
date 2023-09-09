
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

import SharedEnums

public class ListDesignerSystemUseCaseImpl: ListDesignerSystemUseCase {
    
    private let listComponentGateway: ListDesignerSystemUseCaseGateway
    
    private let saveComponentUseCase: SaveComponentUseCase
    
    public init(listComponentGateway: ListDesignerSystemUseCaseGateway, saveComponentUseCase: SaveComponentUseCase) {
        self.listComponentGateway = listComponentGateway
        self.saveComponentUseCase = saveComponentUseCase
    }
    
    public func list() async throws {
        
        let componentsDTO: [ListDesignerSystemUseCaseGatewayDTO.Output] = try await listComponentGateway.listComponents()
        
        let components: [ComponentDTO] = MapperDTOToComponent.mapper(componentsDTO)
        
        saveComponentUseCase.save(components: components)
        
    }

}

