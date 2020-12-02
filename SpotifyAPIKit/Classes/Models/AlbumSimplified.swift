//
//  AlbumSimplified.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public struct AlbumSimplified: Codable, Searchable, Equatable {
    public let albumType: AlbumType
    public let artists: [ArtistSimplified]
    public let availableMarkets: [Country]? // FIXME: Issue with "playlists/\(playlistId)/tracks"
    public let externalUrls: ExternalUrl
    public let href: String
    public let id: String
    public let images: [Image]
    public let name: String
    public let releaseDate: String
    public let releaseDatePrecision: DatePrecision
    public let restrictions: Restriction?
    public let uri: String
}
