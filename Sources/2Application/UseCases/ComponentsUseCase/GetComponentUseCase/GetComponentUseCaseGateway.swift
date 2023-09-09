//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

public protocol GetComponentUseCaseGateway: AnyObject {
    func get(id: Int) -> ComponentDTO?
    func get(name: String) -> ComponentDTO?
    
}
