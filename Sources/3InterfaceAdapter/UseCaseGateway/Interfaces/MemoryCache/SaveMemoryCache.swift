//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

public protocol SaveMemoryCache {
    func save<T>(contentsOf: [T])
    func save<T>(item: T)
}

