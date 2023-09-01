//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation


public protocol ListComponentsUseCaseGateway {
    func listComponents(_ themeId: Int) async throws -> [ListComponentsUseCaseGatewayDTO.Output]
}
