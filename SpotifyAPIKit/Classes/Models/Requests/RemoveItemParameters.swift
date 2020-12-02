//
//  RemoveItemParameters.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct RemoveItemParameters: Codable, Equatable {
    let tracks: [String]?
    let snapshotId: String?

    public init(tracks: [String]? = nil, snapshotId: String? = nil) {
        self.tracks = tracks
        self.snapshotId = snapshotId
    }
}
