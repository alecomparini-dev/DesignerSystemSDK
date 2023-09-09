//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

public struct ComponentMemoryCacheModel {
    public let id: Int
    public let name: String
    public let themeId: Int
    public let backgroundColor: String
    public let font: FontComponentMemoryCacheModel?
    
    public init(id: Int, name: String, themeId: Int, backgroundColor: String, font: FontComponentMemoryCacheModel?) {
        self.id = id
        self.name = name
        self.themeId = themeId
        self.backgroundColor = backgroundColor
        self.font = font
    }
    
}
