//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation
import DSMUseCase


typealias Components = [ComponentCodable]

struct ComponentCodable: Codable {
    let themeID: Int?
    let theme: ThemeCodable?
    let name: String?
    let foregroundColor: String?
    let backgroundColor: String?
    let fontName: String?
    let fontSize: Int?
    let style: Int?
    let id: Int?
    let isInativo: Bool?
    let creationDate: String?
    let changeDate: String?
    let uid, uidFirebase: String?
    let isChanged: Bool?

    enum CodingKeys: String, CodingKey {
        case themeID = "ThemeId"
        case theme = "Theme"
        case name = "Name"
        case foregroundColor = "ForegroundColor"
        case backgroundColor = "BackgroundColor"
        case fontName = "FontName"
        case fontSize = "FontSize"
        case style = "Style"
        case id = "Id"
        case isInativo = "IsInativo"
        case creationDate = "CreationDate"
        case changeDate = "ChangeDate"
        case uid = "Uid"
        case uidFirebase = "UidFirebase"
        case isChanged = "IsChanged"
    }
    
}

extension Components {
    func mapperToDTO() -> [ListComponentsUseCaseGatewayDTO.Output] {
        return self.map {
            ListComponentsUseCaseGatewayDTO.Output(
                name: $0.name ?? "",
                themeId: $0.themeID ?? 1,
                backgroundColor: $0.backgroundColor,
                create: $0.creationDate,
                font: ListComponentsUseCaseGatewayDTO.Font(
                    size: $0.fontSize ,
                    color: $0.foregroundColor,
                    family: $0.fontName,
                    weight: $0.style
                )
            )
        }
    }

}
