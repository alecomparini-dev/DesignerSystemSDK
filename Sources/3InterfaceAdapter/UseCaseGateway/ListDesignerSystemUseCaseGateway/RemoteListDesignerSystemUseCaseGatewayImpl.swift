
//  Created by Alessandro Comparini on 29/08/23.
//

import Foundation
import DSMUseCase


public class RemoteListDesignerSystemUseCaseGatewayImpl: ListDesignerSystemUseCaseGateway {

    
    private let httpGetClient: HTTPGet
    private let url: URL
    private let headers: [String : String]
    private let queryParameters: [String : String]
    
    public init(httpGetClient: HTTPGet, url: URL, headers: [String : String] = [:], queryParameters: [String : String] = [:]) {
        self.httpGetClient = httpGetClient
        self.url = url
        self.headers = headers
        self.queryParameters = queryParameters
    }
    
    public func listComponents() async throws -> [ListDesignerSystemUseCaseGatewayDTO.Output] {
     
        let data = try await httpGetClient.get(url: url, headers: headers, queryParameters: queryParameters)
        guard let data else { return [] }
        
        let componentsCodable: ComponentsCodable = try JSONDecoder().decode(ComponentsCodable.self, from: data)
        
        return componentsCodable.mapperToDTO()
    }
    
    
    
}


