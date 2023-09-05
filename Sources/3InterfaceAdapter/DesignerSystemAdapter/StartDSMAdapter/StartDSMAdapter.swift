//
//  File.swift
//  
//
//  Created by Alessandro Comparini on 04/09/23.
//

import Foundation

public protocol StartDSMAdapter {
    func start(themeId: Int) async throws
}
