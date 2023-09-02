//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DSMUseCaseGateway
import NetworkSDK

class Network: HTTPGet {
    
    func get(url: URL, queryParameters: Dictionary<String, String>) async throws -> Data? {
        
        let network = NetworkSDK(url: url)
        
        print(try await network.get())
        
        return nil
    }
    
}
