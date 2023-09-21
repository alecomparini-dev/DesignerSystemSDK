
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

import DesignerSystemAdapter
import DSMDomain
import DSMUseCase
import DSMUseCaseGateway
import Network
import MemoryCache

public class DesignerSystemMain {
    
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
                
        let listDSUseCaseGateway = RemoteListDesignerSystemUseCaseGatewayImpl(httpGetClient: httpGetClient,
                                                                                 url: self.url,
                                                                                 headers: self.headers,
                                                                                 queryParameters: self.queryParameters)
        
        
        let saveMemoryCache = ComponentMemoryCache.shared
        
        let saveComponentGateway = MemorySaveComponentUseCaseGatewayImpl(memoryCache: saveMemoryCache)
        
        let saveComponent = SaveComponentUseCaseImpl(saveComponentUseCaseGateway: saveComponentGateway)
        
        let listDSUseCase = ListDesignerSystemUseCaseImpl(listComponentGateway: listDSUseCaseGateway, saveComponentUseCase: saveComponent)
        
        let dsmAdapter = StartDSMAdapterImpl(listDSUseCase: listDSUseCase)
        
        try await dsmAdapter.start()
        
    }

    
    
}
