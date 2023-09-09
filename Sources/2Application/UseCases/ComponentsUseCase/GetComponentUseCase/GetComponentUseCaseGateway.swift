//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

public protocol GetComponentUseCaseGateway: AnyObject {
    
    func get(id: Int) -> GetComponentUseCaseGatewayDTO.Output?
    
    func get(name: String) -> GetComponentUseCaseGatewayDTO.Output?
    
}
