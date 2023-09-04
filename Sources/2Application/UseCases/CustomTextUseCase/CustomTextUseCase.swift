//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

public protocol CustomTextUseCase {
    func get(id: Int) -> CustomTextUseCaseDTO.Output?
    func get(name: String) -> CustomTextUseCaseDTO.Output?
    func get(uuid: String) -> CustomTextUseCaseDTO.Output?
}
