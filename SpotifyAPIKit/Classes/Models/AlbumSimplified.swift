//
//  AlbumSimplified.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public struct AlbumSimplified: Codable, Searchable, Equatable {
    public let id: String
    public let href: String
    public let name: String
    public let uri: String
    public let albumType: String
    public let releaseDate: String
    public let releaseDatePrecision: DatePrecision
    public let availableMarkets: [Country]
    public let artists: [ArtistSimplified]
    public let images: [Image]
    public let restrictions: Restriction?
}
