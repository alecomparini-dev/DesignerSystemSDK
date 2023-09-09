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


    public func get(id: Int) -> GetComponentUseCaseGatewayDTO.Output? {
        if let model: ComponentMemoryCacheModel = memoryCache.findBy(id: id) {
            return ComponentMemoryCacheModelMapper.mapperToDTO(model: model)
        }
        return nil
    }
    
    
    public func get(name: String) -> GetComponentUseCaseGatewayDTO.Output? {
        if let model: ComponentMemoryCacheModel = memoryCache.findBy(name: name) {
            return ComponentMemoryCacheModelMapper.mapperToDTO(model: model)
        }
        return nil
    }
    
    
    
}

