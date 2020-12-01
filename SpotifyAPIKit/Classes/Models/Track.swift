//
//  Track.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct Track: Codable, Searchable, Equatable {
    public let album: AlbumSimplified
    public let artists: [ArtistSimplified]
    public let availableMarkets: [Country]
    public let discNumber: Int
    public let durationMs: Int
    public let explicit: Bool
    public let externalIds: ExternalIds
    public let externalUrls: ExternalUrl
    public let href: String
    public let id: String
    public let isPlayable: Bool?
    public let linkedFrom: TrackLink?
    public let restrictions: Restriction?
    public let popularity: Int
    public let previewUrl: String?
    public let trackNumber: Int
    public let uri: String
    public let isLocal: Bool
}
