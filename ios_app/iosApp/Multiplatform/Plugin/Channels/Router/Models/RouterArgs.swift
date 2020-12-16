//
//  RouterArgs.swift
//  iosApp
//
//  Created by Liber Da Silva on 03/12/2020.
//

import Foundation

public struct RouterArgs: Codable {
    public var path: String
    public var replace: Bool = false
    public var clearStack: Bool = false
    public var args: String?
    
    public init(path: String, replace: Bool = false, clearStack: Bool = false, args: String? = nil) {
        self.path = path
        self.replace = replace
        self.clearStack = clearStack
        self.args = args
    }

    private enum CodingKeys: String, CodingKey {
        case path, replace, clearStack, args
    }
}

