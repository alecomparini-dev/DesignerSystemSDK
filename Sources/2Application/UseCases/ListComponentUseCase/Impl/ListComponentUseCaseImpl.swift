
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

import DSMDomain
import SharedEnums

public class ListComponentsUseCaseImpl: ListComponentUseCase {
    
    private let listComponentGateway: ListComponentsUseCaseGateway
    private let cacheManager: CacheManagerDomain
    
    public init(listComponentGateway: ListComponentsUseCaseGateway, cacheManager: CacheManagerDomain) {
        self.listComponentGateway = listComponentGateway
        self.cacheManager = cacheManager
    }
    
    public func list() async throws {
        
        let componentsDTO: [ListComponentsUseCaseGatewayDTO.Output] = try await listComponentGateway.listComponents()
        
        let components: [Component] = MapperDTOToComponent.mapper(componentsDTO)
        
        cacheManager.clear()
        cacheManager.save(components)
        
    }

}

