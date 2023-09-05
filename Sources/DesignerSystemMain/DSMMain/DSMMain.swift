
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DesignerSystemAdapter
import DSMUseCase
import DSMUseCaseGateway
import Network

public class DSMMain {
    
    private let url: URL
    
    public init(url: URL) {
        self.url = url
    }
    
    public func start(themeId: Int) async throws {
        
        let httpGetClient: HTTPGet = Network()
                
        let listComponentUseCaseGateway = RemoteListComponentsUseCaseGatewayImpl(httpGetClient: httpGetClient, url: self.url)
        
        let listComponentsUseCase = ListComponentsUseCaseImpl(listComponentGateway: listComponentUseCaseGateway)
        
        let dsmAdapter = StartDSMAdapterImpl(listComponentsUseCase: listComponentsUseCase)
        
        try await dsmAdapter.start(themeId: themeId)
        
    }

    
    
}
