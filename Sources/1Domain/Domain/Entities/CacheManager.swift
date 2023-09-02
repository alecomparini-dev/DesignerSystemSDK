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
    
    func getBy(name: String) -> Any? {
        debugPrint("No implement yet")
        return nil
    }
    
    func getBy(id: Int) -> Any? {
        debugPrint("No implement yet")
        return nil
    }
    
    func clear() {
        cache.removeAll()
    }
    
}
