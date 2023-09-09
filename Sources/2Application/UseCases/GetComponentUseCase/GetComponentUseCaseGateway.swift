//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

public protocol GetComponentUseCaseGateway: AnyObject {
    
    func get(id: Int) -> GetComponentUseCaseDTO.Output?
    
    func get(name: String) -> GetComponentUseCaseDTO.Output?
    
}
