//
//  SearchParameters.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct SearchParameters: Codable, Equatable {
    public let q: String
    public let type: ObjectType
    public let market: Country?
    public let includeExternal: String?

    public init(q: String,
                type: ObjectType,
                market: Country? = nil,
                includeExternal: String? = nil) {
        self.q = q
        self.type = type
        self.market = market
        self.includeExternal = includeExternal
    }
}
