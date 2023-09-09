//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

import DSMDomain

public class GetComponentUseCaseImpl: GetComponentUseCase {

    
    private let getComponentUseCaseGateway: GetComponentUseCaseGateway
    
    public init(getComponentUseCaseGateway: GetComponentUseCaseGateway) {
        self.getComponentUseCaseGateway = getComponentUseCaseGateway
    }
    
    
    public func get(id: Int) -> GetComponentUseCaseDTO.Output? {
        let component: GetComponentUseCaseDTO.Output? = getComponentUseCaseGateway.get(id: id)
        return component
    }
    
    public func get(name: String) -> GetComponentUseCaseDTO.Output? {
        let component: GetComponentUseCaseDTO.Output? = getComponentUseCaseGateway.get(name: name)
        return component
    }
    
    
    
}
