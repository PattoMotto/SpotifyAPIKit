//
//  Artist.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct Artist: Codable, Searchable {
    let externalUrls: ExternalUrl
    let followers: Follower
    let genres: [String]
    let href: String
    let id: String
    let images: [Image]
    let name: String
    let popularity: Int
    let uri: String
}
