//
//  Created by Alessandro Comparini on 29/08/23.
//

import UIKit
import CustomComponentsSDK

open class CustomText: LabelBuilder  {
    
    public override init() {
        super.init()
        self.setSize(60)
            .setColor("#FFFFFF")
            .setWeight(.thin)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
