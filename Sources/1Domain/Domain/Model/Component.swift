//  Created by Alessandro Comparini on 29/08/23.


import Foundation

public struct Component {
    let uuid: String
    let id: Int
    let themeId: Int
    let name: String
    let active: Bool
    let color: String
    let size: Double
    let create: Date
    let changedDate: Date?
    let font: FontComponent?
    
}
