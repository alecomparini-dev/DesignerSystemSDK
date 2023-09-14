
//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

public struct ComponentMemoryCacheDTO {
    public let themeId: Int
    public let id: Int
    public let name: String
    public let backgroundColor: String
    public let font: FontComponentMemoryCacheDTO?
    
    public init(themeId: Int, id: Int, name: String, backgroundColor: String, font: FontComponentMemoryCacheDTO?) {
        self.themeId = themeId
        self.id = id
        self.name = name
        self.backgroundColor = backgroundColor
        self.font = font
    }
    
}
