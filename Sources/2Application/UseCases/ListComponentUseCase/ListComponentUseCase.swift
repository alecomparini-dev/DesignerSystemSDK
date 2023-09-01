
//  Created by Alessandro Comparini on 29/08/23.
//

import Foundation

protocol ListComponentUseCase {
    func listByTheme(_ input: ListComponentUseCaseDTO.Input) -> ListComponentUseCaseDTO.Output
}
