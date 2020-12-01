//
//  SearchRequest.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct SearchRequest: Codable, Equatable {
    public let q: String
    public let type: ObjectType
    public let market: String?
    public let limit: Int?
    public let offset: Int?
    public let includeExternal: String?

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
