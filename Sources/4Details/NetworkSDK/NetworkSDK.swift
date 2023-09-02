//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DSMUseCaseGateway
import NetworkSDKMain

class NetworkSDK: HTTPGet {
    
    func get(url: URL, queryParameters: Dictionary<String, String>) async throws -> Data? {
        
        let network = NetworkSDKMain(url: url, queryParameters: queryParameters)
        
        print(try await network.get())
        
        return nil
    }
    
}
