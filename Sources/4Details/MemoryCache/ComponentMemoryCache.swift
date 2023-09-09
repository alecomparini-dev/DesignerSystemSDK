//  Created by Alessandro Comparini on 02/09/23.
//

import Foundation
import DSMUseCaseGateway

final public class ComponentMemoryCache {
    public static let shared = ComponentMemoryCache()
    
    public typealias T = ComponentMemoryCacheModel
    
    private var cache: [ComponentMemoryCacheModel] = [
        ComponentMemoryCacheModel.init(id: 1,
                                       name: "customText",
                                       themeId: 1,
                                       backgroundColor: "#00ff55",
                                       font: FontComponentMemoryCacheModel(
                                        size: 50,
                                        color: "#00ff55",
                                        weight: .black,
                                        italic: false)
                                      )
    ]
    
    private init() {}
    
    
    public func save(_ components: [ComponentMemoryCacheModel]) {
        cache.append(contentsOf: components)
    }
    
    public func clear() {
        cache.removeAll()
    }
    
}


//  MARK: - EXTENSION - FindMemoryCache
extension ComponentMemoryCache: FindMemoryCache {
    public func findAll<T>() -> [T] {
        return cache as! [T]
    }
    
    public func findBy<T>(name: String) -> T? {
        return cache.first { $0.name == name } as? T
    }
    
    public func findBy<T>(id: Int) -> T? {
        return cache.first { $0.id == id } as? T
    }
    
}
