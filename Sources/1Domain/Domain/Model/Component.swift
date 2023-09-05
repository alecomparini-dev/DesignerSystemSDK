//  Created by Alessandro Comparini on 29/08/23.


import Foundation

public struct Component {
    public let id: Int
    public let themeId: Int
    public let name: String
    public let uuid: String?
    public let active: Bool?
    public let backgroundColor: String
    public let font: FontComponent?
    
    public init(uuid: String?, id: Int, themeId: Int, name: String, active: Bool?, backgroundColor: String, font: FontComponent?) {
        self.uuid = uuid
        self.id = id
        self.themeId = themeId
        self.name = name
        self.active = active
        self.backgroundColor = backgroundColor
        self.font = font
    }
    
}
