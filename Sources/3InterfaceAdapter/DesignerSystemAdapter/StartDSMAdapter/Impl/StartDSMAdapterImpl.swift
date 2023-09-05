//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation
import DSMUseCase

public class StartDSMAdapterImpl: StartDSMAdapter {
    
    private let listComponentsUseCase: ListComponentUseCase
    
    public init(listComponentsUseCase: ListComponentUseCase) {
        self.listComponentsUseCase = listComponentsUseCase
    }
    
    public func start() async throws {
        
        try await listComponentsUseCase.list()
        
    }
    
    
}
