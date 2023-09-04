//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

public protocol CustomTextPresenter {
    func get(id: Int)
    func get(name: String)
    func get(uuid: String)
}
