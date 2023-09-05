//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation

import DSMUseCase


typealias ComponentsCodable = [ComponentCodable]

struct ComponentCodable: Codable {
    let id: Int
    let name: String
    let themeID: Int
    let theme: ThemeCodable?
    let uid: String?
    let foregroundColor: String?
    let backgroundColor: String?
    let fontName: String?
    let fontSize: Int?
    let style: Int?
    let isInativo: Bool?
    let creationDate: String?
    let changeDate: String?
    let uidFirebase: String?
    let isChanged: Bool?

    enum CodingKeys: String, CodingKey {
        case themeID = "ThemeId"
        case theme = "Theme"
        case uid = "Uid"
        case id = "Id"
        case name = "Name"
        case foregroundColor = "ForegroundColor"
        case backgroundColor = "BackgroundColor"
        case fontName = "FontName"
        case fontSize = "FontSize"
        case style = "Style"
        case isInativo = "IsInativo"
        case creationDate = "CreationDate"
        case changeDate = "ChangeDate"
        case uidFirebase = "UidFirebase"
        case isChanged = "IsChanged"
    }
    
}

extension ComponentsCodable {
    func mapperToDTO() -> [ListComponentsUseCaseGatewayDTO.Output] {
        return self.map {
            ListComponentsUseCaseGatewayDTO.Output(
                id: $0.id,
                name: $0.name,
                uuid: $0.uid,
                themeId: $0.themeID,
                backgroundColor: $0.backgroundColor,
                create: $0.creationDate,
                active: !($0.isInativo ?? true),
                font: ListComponentsUseCaseGatewayDTO.Font(
                    size: CGFloat($0.fontSize ?? 14) ,
                    color: $0.foregroundColor,
                    family: $0.fontName,
                    weight: (($0.style ?? 1) - 1)
                )
            )
        }
    }

}
