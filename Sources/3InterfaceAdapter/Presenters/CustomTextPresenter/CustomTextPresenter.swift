//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation
import CustomComponentsSDK

public protocol CustomTextPresenter {
    func get(id: Int) -> LabelBuilder
    func get(name: String) -> LabelBuilder
    func get(uuid: String) -> LabelBuilder
}
