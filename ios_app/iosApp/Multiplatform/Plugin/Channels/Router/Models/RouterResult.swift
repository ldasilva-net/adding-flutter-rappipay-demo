//
//  RouterResult.swift
//  iosApp
//
//  Created by Liber Da Silva on 03/12/2020.
//

import Foundation

public struct RouterResult: Codable {
    public var result: String
        
    private enum CodingKeys: String, CodingKey {
        case result
    }
}
