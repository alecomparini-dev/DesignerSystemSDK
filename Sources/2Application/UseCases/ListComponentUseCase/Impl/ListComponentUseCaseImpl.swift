
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

public class ListComponentsUseCaseImpl: ListComponentUseCase {
    
    private let listComponentGateway: ListComponentsUseCaseGateway
    
    public init(listComponentGateway: ListComponentsUseCaseGateway) {
        self.listComponentGateway = listComponentGateway
    }
    
    public func list(_ request: ListComponentsUseCaseDTO.Input) async throws {
        
        let components: [ListComponentsUseCaseGatewayDTO.Output] = try await listComponentGateway.listComponents(request.themeId)
        
        
        print(components)
        
    }
    
}
