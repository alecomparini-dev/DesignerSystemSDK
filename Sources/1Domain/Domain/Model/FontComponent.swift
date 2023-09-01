//  Created by Alessandro Comparini on 29/08/23.


import Foundation

public struct FontComponent {
    let size: Double
    let color: String
    let family: String
    let weight: FontWeight?
    let aligment: FontAlignment?
}

enum FontAlignment: Int {
    case left
    case center
    case right
    case justified
    case natural
}

enum FontWeight: Int {
    case bold
    case semibold
    case regular
    case ultraLight
    case thin
    case light
    case medium
    case heavy
    case black
}

