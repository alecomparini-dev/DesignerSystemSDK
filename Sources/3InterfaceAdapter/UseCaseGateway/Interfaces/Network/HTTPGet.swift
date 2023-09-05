//  Created by Alessandro Comparini on 19/08/23.
//

import Foundation

public protocol HTTPGet {
    func get(url: URL, headers: [String: String]?, queryParameters: [String: String]?) async throws -> Data?
}

