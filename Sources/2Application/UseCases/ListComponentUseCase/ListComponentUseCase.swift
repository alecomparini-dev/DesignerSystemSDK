
//  Created by Alessandro Comparini on 29/08/23.
//

import Foundation

public protocol ListComponentUseCase {
    func list(_ request: ListComponentsUseCaseDTO.Input) async throws
}
