
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DesignerSystemAdapter
import DSMUseCase
import DSMUseCaseGateway

public class DSMMain {
    
    private let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    public func start(themeId: Int) async throws {
        
        let listComponentUseCaseGateway = RemoteListComponentsUseCaseGatewayImpl()
        
        let listComponentsUseCase = ListComponentsUseCaseImpl(listComponentGateway: listComponentUseCaseGateway)
        
        let dsmAdapter = StartDSMAdapterImpl(listComponentsUseCase: listComponentsUseCase)
        
        try await dsmAdapter.start(themeId: themeId)
        
    }

    
    
}
