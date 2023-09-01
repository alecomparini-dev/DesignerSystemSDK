//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import UseCaseGateway
import Network

class Network: HTTPGet {
    
    func get(url: URL, parameters: Dictionary<String, String>) async throws -> Data? {
        let responseDTO: Network.ResponseDTO = try await networkHTTP.get(url: url, parameters: parameters)
        
        return responseDTO.
    }
    
    
    
    
}
