//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

public struct ComponentMemoryCacheDTO {
    public let id: Int
    public let name: String
    public let themeId: Int
    public let backgroundColor: String
    public let font: FontComponentMemoryCacheDTO?
    
    public init(id: Int, name: String, themeId: Int, backgroundColor: String, font: FontComponentMemoryCacheDTO?) {
        self.id = id
        self.name = name
        self.themeId = themeId
        self.backgroundColor = backgroundColor
        self.font = font
    }
    
}
