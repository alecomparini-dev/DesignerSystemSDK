//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

public protocol GetComponentUseCase {
    func get(id: Int) -> ComponentDTO?
    func get(name: String) -> ComponentDTO?
}
