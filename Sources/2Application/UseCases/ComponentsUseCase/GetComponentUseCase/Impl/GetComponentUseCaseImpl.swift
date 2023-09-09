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
        if let component: GetComponentUseCaseGatewayDTO.Output = getComponentUseCaseGateway.get(id: id) {
            return MapperUseCaseGatewayToUseCaseDTO.mapper(component)
        }
        return nil
    }
    
    public func get(name: String) -> GetComponentUseCaseDTO.Output? {
        
        if let component: GetComponentUseCaseGatewayDTO.Output = getComponentUseCaseGateway.get(name: name) {
            return MapperUseCaseGatewayToUseCaseDTO.mapper(component)
        }
        return nil
    }
    
    
    
}
