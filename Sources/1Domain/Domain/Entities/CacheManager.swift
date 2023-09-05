//  Created by Alessandro Comparini on 02/09/23.
//

import Foundation

final public class CacheManager {
    public static let shared = CacheManager()
    
    private var cache: [Component] = [
        Component(uuid: "2023-08-22396e44bd-b821-4a80-a811-f206b506e02a",
                  id: 3,
                  themeId: 1,
                  name: "customText",
                  active: true,
                  backgroundColor: "transparent",
                  size: nil ,
                  font: FontComponent.init(size: 24,
                                           color: "#6d1212",
                                           family: "Roboto",
                                           weight: .black,
                                           aligment: nil))
    ]
    
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
    
    public func getBy(name: String) -> [Component]? {
        return cache.filter( { $0.name.contains(name) } )
    }
    
}
