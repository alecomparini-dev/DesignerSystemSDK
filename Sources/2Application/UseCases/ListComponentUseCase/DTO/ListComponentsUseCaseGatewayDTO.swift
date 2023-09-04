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
        public let color: String?
        public let backgroundColor: String?
        public let size: Double?
        public let create: Date?
        public let font: ListComponentsUseCaseGatewayDTO.Font?
    }

    public struct Font {
        public let size: Double?
        public let color: String?
        public let family: String?
        public let weight: Int?
    }


}
