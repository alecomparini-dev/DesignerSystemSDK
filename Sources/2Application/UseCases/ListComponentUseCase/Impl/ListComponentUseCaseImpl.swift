
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

class ListComponentsUseCaseImpl: ListComponentUseCase {
    
    private let listComponentGateway: ListComponentsUseCaseGateway
    
    init(listComponentGateway: ListComponentsUseCaseGateway) {
        self.listComponentGateway = listComponentGateway
    }
    
    func list(_ request: ListComponentsUseCaseDTO.Input) async throws -> [ListComponentsUseCaseDTO.Output] {
        
        let components: [ListComponentsUseCaseGatewayDTO.Output] = try await listComponentGateway.listComponents(request.themeId)
        
        print(components)
        
        return []
    }
    
}
