//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

public enum ListComponentsUseCaseGatewayDTO {
    
    public struct Input {
        let themeId: Int
    }
    
    public struct Output {
        public let id: Int
        public let themeId: Int
        public let name: String
        public let uuid: String?
        public let backgroundColor: String?
        public let create: String?
        public let active: Bool?
        public let font: ListComponentsUseCaseGatewayDTO.Font?
        
        public init(id: Int, name: String, uuid: String?, themeId: Int, backgroundColor: String?, create: String?, active: Bool?, font: ListComponentsUseCaseGatewayDTO.Font?) {
            self.id = id
            self.name = name
            self.uuid = uuid
            self.themeId = themeId
            self.backgroundColor = backgroundColor
            self.create = create
            self.active = active
            self.font = font
        }
    }

    public struct Font {
        public let size: CGFloat?
        public let color: String?
        public let family: String?
        public let weight: Int?
        
        public init(size: CGFloat?, color: String?, family: String?, weight: Int?) {
            self.size = size
            self.color = color
            self.family = family
            self.weight = weight
        }
    }


}
