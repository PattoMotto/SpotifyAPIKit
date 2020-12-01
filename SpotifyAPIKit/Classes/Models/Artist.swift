//
//  Artist.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct Artist: Codable, Searchable, Equatable {
    public let externalUrls: ExternalUrl
    public let followers: Follower
    public let genres: [String]
    public let href: String
    public let id: String
    public let images: [Image]
    public let name: String
    public let popularity: Int
    public let uri: String
}
