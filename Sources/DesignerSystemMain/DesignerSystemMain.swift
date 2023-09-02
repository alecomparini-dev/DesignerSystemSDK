
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DesignerSystemAdapter
import CustomComponentsSDK

public class DesignerSystemMain {
    
    private let url: URL
    
    public init(urlTheme: URL) {
        self.url = urlTheme
    }
    
    public func get<T>(component: any DesignerSystemComponent ) -> T {
        
        let component = component.get()
        
        return component as! T
    }
    
    public func CustomButtonPrimary() -> ButtonBuilder {
        return ButtonBuilder("Button Primary")
            .setTitleColor("#FFFFFF")
            .setBackgroundColor(hexColor: "#4682A9")
            .setTitleSize(24)
            .setTitleWeight(.regular)
            .setFontFamily("Roboto", 24)
    }
    
    
    
}
