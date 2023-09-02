
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DesignerSystemAdapter

public class DesignerSystemMain {
    
    private let url: URL
    
    public init(urlTheme: URL) {
        self.url = urlTheme
    }
    
    public func get<T>(component: any DesignerSystemComponent ) -> T {
        
        let component = component.get()
        
        return component as! T
    }
    
    
    
}
