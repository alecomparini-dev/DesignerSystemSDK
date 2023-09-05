//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

import DSMDomain

public class CustomTextUseCaseImpl: CustomTextUseCase {

    private let cacheManager: CacheManager
    
    public init(cacheManager: CacheManager) {
        self.cacheManager = cacheManager
    }
    
    public func get(id: Int) -> CustomTextUseCaseDTO.Output? {
        
        let component: Component? = cacheManager.getBy(id: id)
        guard let component else {return nil}
        
        let dto = MapperComponentToDTO.mapper(component)
        
        return dto
    }
    
    public func get(name: String) -> CustomTextUseCaseDTO.Output? {
        
//        let component: Component = cacheManager.
        
        return CustomTextUseCaseDTO.Output()
    }
    
    
    public func get(uuid: String) -> CustomTextUseCaseDTO.Output? {
        
//        let component: Component = cacheManager.
        
        return CustomTextUseCaseDTO.Output()
    }
    
    
    
}
