//
//  CreateItemParameters.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct CreateItemParameters: Codable, Equatable {
    let position: Int?
    let uris: [String]?

    public init(position: Int? = nil, uris: [String]? = nil) {
        self.position = position
        self.uris = uris
    }
}
