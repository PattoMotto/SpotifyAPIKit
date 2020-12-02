//
//  PlaylistItemsParameters.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct PlaylistItemsParameters: Codable, Equatable {
    let market: Country
    let fields: String?
    let additionalTypes: String?

    public init(market: Country, fields: String? = nil, additionalTypes: String? = nil) {
        self.market = market
        self.fields = fields
        self.additionalTypes = additionalTypes
    }
}
