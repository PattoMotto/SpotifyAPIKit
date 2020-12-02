//
//  PagingParameters.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct PagingParameters: Codable, Equatable {
    let offset: Int?
    let limit: Int?

    public init(offset: Int? = nil, limit: Int? = nil) {
        self.offset = offset
        self.limit = limit
    }
}
