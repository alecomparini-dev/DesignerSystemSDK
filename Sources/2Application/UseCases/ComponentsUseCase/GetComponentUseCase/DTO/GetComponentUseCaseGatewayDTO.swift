//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

import SharedEnums

public enum GetComponentUseCaseGatewayDTO {
    
    public struct Output {
        public var backgroundColor: String?
        public var font: Font?
        
        public init(backgroundColor: String? = nil, font: Font? = nil) {
            self.backgroundColor = backgroundColor
            self.font = font
        }
    }
    
    public struct Font {
        public var family: String?
        public var color: String?
        public var size: CGFloat?
        public var weight: FontWeight?
        public var italic: Bool?
        
        public init(family: String? = nil, color: String? = nil, size: CGFloat? = nil, weight: FontWeight? = nil, italic: Bool? = nil) {
            self.family = family
            self.color = color
            self.size = size
            self.weight = weight
            self.italic = italic
        }
    }
    
}
