
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DesignerSystemAdapter
import CustomComponentsSDK

public class DSMMain {
    
    private let url: URL
    
    public init() { }
    
    public func start(url: URL) {
        
    }
    

    public static func CustomButtonPrimary() -> ButtonBuilder {
        
        return ButtonBuilder("Button Primary")
            .setTitleColor("#FFFFFF")
            .setBackgroundColor(hexColor: "#4682A9")
            .setTitleSize(24)
            .setTitleWeight(.regular)
            .setFontFamily("Roboto", 24)
    }
    
    
    
}
