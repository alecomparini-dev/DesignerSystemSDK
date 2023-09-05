//  Created by Alessandro Comparini on 31/08/23.
//

import Foundation
import DSMDomain

public enum ListComponentsUseCaseDTO {
    
    public struct Output {
        public let name: String?
        public let color: String?
        public let backgroundColor: String?
        public let size: Double?
        public let create: Date?
        public let font: FontComponent?
        
        public init(name: String?, color: String?, backgroundColor: String?, size: Double?, create: Date?, font: FontComponent?) {
            self.name = name
            self.color = color
            self.backgroundColor = backgroundColor
            self.size = size
            self.create = create
            self.font = font
        }
    }

}

