//
//  TrackSimplified.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct TrackSimplified: Codable, Equatable {
    public let artists: [ArtistSimplified]
    public let availableMarkets: [Country]? // FIXME: Issue with "albums/\(albumId)/tracks/"
    public let discNumber: Int
    public let durationMs: Int
    public let explicit: Bool
    public let externalUrls: ExternalUrl
    public let href: String
    public let id: String
    public let isPlayable: Bool?
    public let linkedFrom: TrackLink?
    public let restrictions: Restriction?
    public let name: String
    public let previewUrl: String?
    public let trackNumber: Int
    public let uri: String
    public let isLocal: Bool
}
