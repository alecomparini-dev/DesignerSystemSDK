
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

class DesignerSystemImpl: DesignerSystem {
    
    func get<T>(component: TypeComponent) -> T {    
        return T.self as! T
    }
    
}
