//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation
import DSMUseCase

public class StartDSMAdapterImpl: StartDSMAdapter {
    
    private let listDSUseCase: ListDesignerSystemUseCase
    
    public init(listDSUseCase: ListDesignerSystemUseCase) {
        self.listDSUseCase = listDSUseCase
    }
    
    public func start() async throws {
        
        try await listDSUseCase.list()
        
    }
    
    
}
