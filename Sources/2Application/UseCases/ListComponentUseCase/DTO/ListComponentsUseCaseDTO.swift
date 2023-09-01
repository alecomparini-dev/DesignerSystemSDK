//  Created by Alessandro Comparini on 31/08/23.
//

import Foundation
import Domain

enum ListComponentsUseCaseDTO {
    
    struct Input {
        let themeId: Int
    }
    
    struct Output {
        let name: String
        let color: String
        let backgroundColor: String
        let size: Double
        let create: Date
        let font: FontComponent?
    }

}

