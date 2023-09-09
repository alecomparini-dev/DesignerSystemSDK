//  Created by Alessandro Comparini on 02/09/23.
//

import Foundation
import DSMUseCaseGateway

final public class ComponentMemoryCache {
    public static let shared = ComponentMemoryCache()
    
    private var cache: [ComponentMemoryCacheDTO] = [
        ComponentMemoryCacheDTO.init(id: 1,
                                       name: "customText",
                                       themeId: 1,
                                       backgroundColor: "transparent",
                                       font: FontComponentMemoryCacheDTO(
                                        size: 50,
                                        color: "#00ff55",
                                        weight: .black,
                                        italic: false)
                                      )
    ]
    
    private init() {}
    
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


//  MARK: - EXTENSION - SaveMemoryCache

extension ComponentMemoryCache: SaveMemoryCache {
    
    public func save<T>(contentsOf: [T]) {
        cache.append(contentsOf: contentsOf as! [ComponentMemoryCacheDTO])
    }
    
    public func save<T>(item: T) {
        cache.append(item as! ComponentMemoryCacheDTO)
    }
    
}


//  MARK: - EXTENSION - DeleteMemoyCache

extension ComponentMemoryCache: DeleteMemoyCache {
    public func deleteAll() {
        cache.removeAll()
    }
    
    public func deleteBy(id: Int) {
        if let id = cache.firstIndex(where: { $0.id == id }) {
            cache.remove(at: id)
        }
    }
    
}
