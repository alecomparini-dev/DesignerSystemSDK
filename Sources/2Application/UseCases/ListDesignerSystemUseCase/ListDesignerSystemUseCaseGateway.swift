//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation


public protocol ListDesignerSystemUseCaseGateway {
    func listComponents() async throws -> [ListComponentsUseCaseGatewayDTO.Output]
}
