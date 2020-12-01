//
//  Track.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct Track: Codable, Searchable {
    let album: AlbumSimplified
    let artists: [ArtistSimplified]
    let availableMarkets: [Country]
    let discNumber: Int
    let durationMs: Int
    let explicit: Bool
    let externalIds: ExternalIds
    let externalUrls: ExternalUrl
    let href: String
    let id: String
    let isPlayable: String?
    let linkedFrom: TrackLink?
    let restrictions: Restriction?
    let popularity: Int
    let previewUrl: String?
    let trackNumber: Int
    let uri: String
    let isLocal: Bool
}
