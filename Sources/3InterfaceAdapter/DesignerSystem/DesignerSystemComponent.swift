//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

public protocol DesignerSystemComponent {
    associatedtype T
    
    func get() -> T
}



