//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

public protocol GetComponentUseCase {
    func get(id: Int) -> GetComponentUseCaseDTO.Output?
    func get(name: String) -> GetComponentUseCaseDTO.Output?
    func get(uuid: String) -> GetComponentUseCaseDTO.Output?
}
