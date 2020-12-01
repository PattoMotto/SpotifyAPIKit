//
//  AlbumSimplified.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public struct AlbumSimplified: Codable, Searchable {
    let id: String
    let href: String
    let name: String
    let uri: String
    let albumType: String
    let releaseDate: String
    let releaseDatePrecision: DatePrecision
    let availableMarkets: [Country]
    let artists: [ArtistSimplified]
    let images: [Image]
    let restrictions: Restriction?
}
