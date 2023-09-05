//  Created by Alessandro Comparini on 29/08/23.


import Foundation

import SharedEnums

public struct FontComponent {
    public let size: CGFloat
    public let color: String
    public let family: String?
    public let weight: FontWeight?
    
    public init(size: CGFloat, color: String, family: String?, weight: FontWeight?  ) {
        self.size = size
        self.color = color
        self.family = family
        self.weight = weight
    }
}
