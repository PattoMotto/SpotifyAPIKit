//
//  SearchRequest.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct SearchRequest: Codable, Equatable {
    let q: String
    let type: ObjectType
    let market: String?
    let limit: Int?
    let offset: Int?
    let includeExternal: String?

    public init(q: String,
                type: ObjectType,
                market: String? = nil,
                limit: Int? = nil,
                offset: Int? = nil,
                includeExternal: String? = nil) {
        self.q = q
        self.type = type
        self.market = market
        self.limit = limit
        self.offset = offset
        self.includeExternal = includeExternal
    }
}
