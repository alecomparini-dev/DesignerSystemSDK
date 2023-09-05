
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

import DesignerSystemAdapter
import DSMDomain
import DSMUseCase
import DSMUseCaseGateway
import Network

public class DSMMain {
    
    private let url: URL
    private let headers: [String : String]
    private let queryParameters: [String : String]
    
    public init(url: URL, headers: [String : String] = [:], queryParameters: [String : String] = [:]) {
        self.url = url
        self.headers = headers
        self.queryParameters = queryParameters
    }
    
    public func start() async throws {
        
        let httpGetClient: HTTPGet = Network()
                
        let listComponentUseCaseGateway = RemoteListComponentsUseCaseGatewayImpl(httpGetClient: httpGetClient,
                                                                                 url: self.url,
                                                                                 headers: self.headers,
                                                                                 queryParameters: self.queryParameters)
        
        let listComponentsUseCase = ListComponentsUseCaseImpl(listComponentGateway: listComponentUseCaseGateway, cacheManager: CacheManager.shared)
        
        let dsmAdapter = StartDSMAdapterImpl(listComponentsUseCase: listComponentsUseCase)
        
        try await dsmAdapter.start()
        
    }

    
    
}
