
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DesignerSystemAdapter

class DesignerSystemMain {
    
    
    private let url: URL
    
    init(urlTheme: URL) {
        self.url = urlTheme
    }
    
    func get<T>(component: any DesignerSystemComponent ) -> T {
        
        let component = component.get()
        
        return component as! T
    }
    
    
    
}
