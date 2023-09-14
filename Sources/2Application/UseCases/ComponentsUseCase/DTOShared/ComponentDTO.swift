//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation


public struct ComponentDTO {
    public let themeId: Int
    public let id: Int
    public let name: String
    public var backgroundColor: String
    public var font: FontDTO?
    
    public init(id: Int, name: String, themeId: Int, backgroundColor: String, font: FontDTO? = nil) {
        self.id = id
        self.name = name
        self.themeId = themeId
        self.backgroundColor = backgroundColor
        self.font = font
    }
    
}
