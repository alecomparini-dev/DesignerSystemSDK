//  Created by Alessandro Comparini on 02/09/23.
//

import Foundation

final public class CacheManager<T> {
    public static let shared = CacheManager()
    
    private var cache: [T] = []
    
    private init() {}
    
    public func save(_ components: [T]) {
        cache.append(contentsOf: components)
    }
    
    public func get() -> [T] {
        return cache
    }
    
    public func clear() {
        cache.removeAll()
    }
    
    public func getBy(id: Int) -> T? {
        return cache.first { $0.id == id }
    }
    
    public func getBy(name: String) -> T? {
        return cache.first { $0.name == name }
    }
    
}
