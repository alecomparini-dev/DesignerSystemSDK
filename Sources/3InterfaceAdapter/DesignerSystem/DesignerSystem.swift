//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation


enum TypeComponent {
    case customButton
    case customButtonPrimary
    case customButtonSecundary
    case customText
    case customView
    case customSubView
}

protocol DesignerSystem {
    func get<T>(component: TypeComponent) -> T
}
