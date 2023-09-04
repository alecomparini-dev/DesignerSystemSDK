//  Created by Alessandro Comparini on 02/09/23.
//

import Foundation

final public class CacheComponentManager {
    static let shared = CacheComponentManager()
    
    private var cache: [Component] = []
    
    private init() {}
    
    func save(_ components: [Component]) {
        cache.append(contentsOf: components)
    }
    
    func get() -> [Component] {
        return cache
    }
    
    func clear() {
        cache.removeAll()
    }
    
    func getBy(uuid: String) -> Component? {
        return cache.first { $0.uuid == uuid }
    }
    
    func getBy(id: Int) -> Component? {
        return cache.first { $0.id == id }
    }
    
    func getBy(name: String) -> [Component]? {
        return cache.filter( { $0.name.contains(name) } )
    }
    
}
