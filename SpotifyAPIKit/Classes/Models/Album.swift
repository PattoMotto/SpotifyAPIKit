//
//  Album.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public enum AlbumType: String, Codable {
    case album, single, compilation
}

public struct Album: Codable, Searchable, Equatable {
    public let albumType: AlbumType
    public let artists: [Artist]
    public let availableMarkets: [Country]
    public let copyrights: [Copyright]
    public let externalIds: ExternalIds
    public let externalUrls: ExternalUrl
    public let genres: [String]
    public let href: String
    public let id: String
    public let images: [Image]
    public let label: String
    public let name: String
    public let popularity: Int
    public let releaseDate: String
    public let releaseDatePrecision: DatePrecision
    public let restrictions: Restriction?
    public let tracks: [TrackSimplified]
    public let uri: String
}
