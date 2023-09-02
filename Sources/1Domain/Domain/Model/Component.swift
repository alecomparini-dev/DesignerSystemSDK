//  Created by Alessandro Comparini on 29/08/23.


import Foundation

public struct Component {
    let uuid: String
    let themeId: Int
    let name: String
    let active: Bool
    let color: String
    let size: Double
    let create: Date
    let changedDate: Date?
    let font: FontComponent?
    
    init(uuid: String, themeId: Int, name: String, active: Bool, color: String, size: Double, create: Date, changedDate: Date?, font: FontComponent?) {
        self.uuid = uuid
        self.themeId = themeId
        self.name = name
        self.active = active
        self.color = color
        self.size = size
        self.create = create
        self.changedDate = changedDate
        self.font = font
    }
    
}
