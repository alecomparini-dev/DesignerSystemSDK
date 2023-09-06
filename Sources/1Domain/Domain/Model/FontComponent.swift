//  Created by Alessandro Comparini on 29/08/23.

import Foundation

import SharedEnums

public struct FontComponent {
    public let size: CGFloat
    public let color: String
    public let family: String?
    public let weight: FontWeight?
    public let italic: Bool
    
    public init(size: CGFloat, color: String, family: String?, weight: FontWeight?, italic: Bool = false) {
        self.size = size
        self.color = color
        self.family = family
        self.weight = weight
        self.italic = italic
    }
    
}
