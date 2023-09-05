//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

public enum ListComponentsUseCaseGatewayDTO {
    
    public struct Input {
        let themeId: Int
    }
    
    public struct Output {
        public let name: String
        public let themeId: Int
        public let backgroundColor: String?
        public let create: String?
        public let font: ListComponentsUseCaseGatewayDTO.Font?
        
        public init(name: String, themeId: Int, backgroundColor: String?,  create: String?, font: ListComponentsUseCaseGatewayDTO.Font?) {
            self.name = name
            self.themeId = themeId
            self.backgroundColor = backgroundColor
            self.create = create
            self.font = font
        }
    }

    public struct Font {
        public let size: Int?
        public let color: String?
        public let family: String?
        public let weight: Int?
        
        public init(size: Int?, color: String?, family: String?, weight: Int?) {
            self.size = size
            self.color = color
            self.family = family
            self.weight = weight
        }
    }


}
