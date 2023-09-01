//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

public enum ListComponentsUseCaseGatewayDTO {
    
    public struct Input {
        let themeId: Int
    }
    
    public struct Output {
        let name: String
        let color: String?
        let backgroundColor: String?
        let size: Double?
        let create: Date?
        let font: Font?
    }
    
    public struct Font {
        let size: Double?
        let color: String?
        let family: String?
        let weight: Int8?
    }
    

}
