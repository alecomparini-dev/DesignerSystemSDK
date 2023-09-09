//  Created by Alessandro Comparini on 09/09/23.
//

import Foundation


public class SaveComponentUseCaseImpl: SaveComponentUseCase {
    
    private let saveComponentUseCaseGateway: SaveComponentUseCaseGateway
    
    public init(saveComponentUseCaseGateway: SaveComponentUseCaseGateway) {
        self.saveComponentUseCaseGateway = saveComponentUseCaseGateway
    }
    
    
    public func save(components: [ComponentDTO]) {
        saveComponentUseCaseGateway.save(components: components)
    }

    
}
