//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DSMUseCaseGateway
import NetworkSDK

class NetworkSDK: HTTPGet {
    
    func get(url: URL, queryParameters: Dictionary<String, String>) async throws -> Data? {
        
        let network = NetworkSDKMain(url: <#T##URL#>)
            
            .get(url: <#T##URL#>, queryParameters: <#T##Dictionary<String, String>#>)
        
        print(try await network.get())
        
        return nil
    }
    
}
