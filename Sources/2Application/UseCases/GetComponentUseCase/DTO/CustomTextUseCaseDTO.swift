//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation
import SharedEnums

public enum GetComponentUseCaseDTO {
    public struct Output {
        public var backgroundColor: String?
        public var font: Font?
    }
    
    public struct Font {
        public var family: String?
        public var color: String?
        public var size: CGFloat?
        public var weight: FontWeight?
        public var italic: Bool?
    }
    
}
