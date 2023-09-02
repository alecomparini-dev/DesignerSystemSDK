
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import CustomComponents

class CustomButtonPrimaryImpl: DesignerSystemComponent  {
    typealias T = ButtonBuilder
    
    func get() -> ButtonBuilder {
        
        let button = ButtonBuilder("Button Primary")
            .setTitleColor("#FFFFFF")
            .setBackgroundColor(hexColor: "#4682A9")
            .setTitleSize(24)
            .setTitleWeight(.regular)
            .setFontFamily("Roboto", 24)
        
        return button
    }
    
}
