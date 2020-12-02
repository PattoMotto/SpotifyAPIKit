//
//  ReplaceItemParameters.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct ReplaceItemParameters: Codable, Equatable {
    let uris: [String]?
    let rangeStart: Int?
    let insertBefore: Int?
    let rangeLength: Int?
    let snapshotId: String?

    public init(uris: [String]? = nil,
                rangeStart: Int? = nil,
                insertBefore: Int? = nil,
                rangeLength: Int? = nil,
                snapshotId: String? = nil) {
        self.uris = uris
        self.rangeStart = rangeStart
        self.insertBefore = insertBefore
        self.rangeLength = rangeLength
        self.snapshotId = snapshotId
    }
}
