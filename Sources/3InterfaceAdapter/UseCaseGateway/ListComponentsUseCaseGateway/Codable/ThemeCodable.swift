//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 01/09/23.
//

import Foundation


struct ThemeCodable: Codable {
    let name: String?
    let id: Int?
    let isInativo: Bool?
    let creationDate: String?
    let changeDate: String?
    let uid, uidFirebase: String?
    let isChanged: Bool?

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case id = "Id"
        case isInativo = "IsInativo"
        case creationDate = "CreationDate"
        case changeDate = "ChangeDate"
        case uid = "Uid"
        case uidFirebase = "UidFirebase"
        case isChanged = "IsChanged"
    }
}

