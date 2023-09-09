//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation
import DSMUseCase


public class MemoryGetComponentUseCaseGatewayImpl: GetComponentUseCaseGateway {
    
    private let memoryCache: FindMemoryCache
    
    public init(memoryCache: FindMemoryCache) {
        self.memoryCache = memoryCache
    }


    public func get(id: Int) -> ComponentDTO? {
        
        if let componentMemoryCacheDTO: ComponentMemoryCacheDTO = memoryCache.findBy(id: id) {
            
            return ComponentMemoryCacheDTOMapper.mapper(componentMemoryCacheDTO)
            
        }
        
        return nil
    }
    
    
    public func get(name: String) -> ComponentDTO? {
        if let componentMemoryCacheDTO: ComponentMemoryCacheDTO = memoryCache.findBy(name: name) {
            
            return ComponentMemoryCacheDTOMapper.mapper(componentMemoryCacheDTO)
        }
        
        return nil
    }
    
    
    
}

