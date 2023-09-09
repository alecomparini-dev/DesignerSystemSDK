//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation
import DSMUseCase


public class MemoryGetComponentUseCaseGatewayImpl: GetComponentUseCaseGateway {
    public init() {}
    

    
    public func getAll() -> [DSMUseCase.GetComponentUseCaseDTO.Output] {
        return []
    }

    public func get(id: Int) -> DSMUseCase.GetComponentUseCaseDTO.Output? {
        
        return nil
    }
    
    public func get(name: String) -> DSMUseCase.GetComponentUseCaseDTO.Output? {
        
        return nil
    }
    
    
    
}

