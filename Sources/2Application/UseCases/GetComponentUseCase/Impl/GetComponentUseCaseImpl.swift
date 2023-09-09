//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

import DSMDomain

public class GetComponentUseCaseImpl: GetComponentUseCase {

    private let cacheManager: CacheManagerDomain
    
    public init(cacheManager: CacheManagerDomain) {
        self.cacheManager = cacheManager
    }
    
    public func get(id: Int) -> GetComponentUseCaseDTO.Output? {
        let component: Component? = cacheManager.getBy(id: id)
        guard let component else {return nil}
        
        let dto = MapperComponentToDTO.mapper(component)
        return dto
    }
    
    public func get(name: String) -> GetComponentUseCaseDTO.Output? {
        let component: Component? = cacheManager.getBy(name: name)
        guard let component else {return nil}
        
        let dto = MapperComponentToDTO.mapper(component)
        return dto
    }
    
    public func get(uuid: String) -> GetComponentUseCaseDTO.Output? {
        return GetComponentUseCaseDTO.Output()
    }
    
    
    
}
