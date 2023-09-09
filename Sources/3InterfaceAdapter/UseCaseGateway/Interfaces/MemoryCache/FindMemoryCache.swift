//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation

public protocol FindMemoryCache {
    func findAll<T>() -> [T]
    func findBy<T>(id: Int) -> T?
    func findBy<T>(name: String) -> T?
}
