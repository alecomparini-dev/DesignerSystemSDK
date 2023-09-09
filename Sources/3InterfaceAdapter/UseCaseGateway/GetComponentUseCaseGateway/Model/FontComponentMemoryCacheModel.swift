//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

import SharedEnums

public struct FontComponentMemoryCacheModel {
    public let size: CGFloat
    public let color: String
    public let family: String?
    public let weight: FontWeight?
    public let italic: Bool
    
    public init(size: CGFloat, color: String, family: String? = nil, weight: FontWeight? = nil, italic: Bool) {
        self.size = size
        self.color = color
        self.family = family
        self.weight = weight
        self.italic = italic
    }
}
