
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation
import DSMUseCase

public class MemorySaveComponentUseCaseGatewayImpl: SaveComponentUseCaseGateway {
    
    private let memoryCache: SaveMemoryCache
    
    public init(memoryCache: SaveMemoryCache) {
        self.memoryCache = memoryCache
    }
    
    
    public func save(components: [ComponentDTO]) {
        let compomentMemoryCacheDTO: [ComponentMemoryCacheDTO?] = components.map {
            ComponentMemoryCacheDTO(id: $0.id,
                                    name: $0.name,
                                    backgroundColor: $0.backgroundColor,
                                    font: FontComponentMemoryCacheDTO(size: $0.font?.size ?? 14,
                                                                      color: $0.font?.color ?? "#000000",
                                                                      family: $0.font?.family,
                                                                      weight: $0.font?.weight,
                                                                      italic: $0.font?.italic))
        }
        memoryCache.save(contentsOf: compomentMemoryCacheDTO)
    }
    
    
}
