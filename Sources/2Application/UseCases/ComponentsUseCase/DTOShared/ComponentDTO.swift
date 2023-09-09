//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation


public struct ComponentDTO {
    public var backgroundColor: String?
    public var font: FontDTO?
    
    public init(backgroundColor: String? = nil, font: FontDTO? = nil) {
        self.backgroundColor = backgroundColor
        self.font = font
    }
    
}
