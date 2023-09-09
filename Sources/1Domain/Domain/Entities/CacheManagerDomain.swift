//  Created by Alessandro Comparini on 02/09/23.
//

import Foundation

final public class CacheManagerDomain {
    public static let shared = CacheManagerDomain()
    
    private var cache: [Component] = []
    
    private init() {}
    
    public func save(_ components: [Component]) {
        cache.append(contentsOf: components)
    }
    
    public func get() -> [Component] {
        return cache
    }
    
    public func clear() {
        cache.removeAll()
    }
    
    public func getBy(uuid: String) -> Component? {
        return cache.first { $0.uuid == uuid }
    }
    
    public func getBy(id: Int) -> Component? {
        return cache.first { $0.id == id }
    }
    
    public func getBy(name: String) -> Component? {
        return cache.first { $0.name  == name } 
    }
    
}
