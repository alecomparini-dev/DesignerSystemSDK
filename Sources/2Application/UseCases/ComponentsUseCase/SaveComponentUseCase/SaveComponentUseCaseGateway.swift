//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

public protocol SaveComponentUseCaseGateway {
    func save(components: [ComponentDTO])
}
