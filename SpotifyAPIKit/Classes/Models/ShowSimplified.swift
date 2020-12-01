//
//  ShowSimplified.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct ShowSimplified: Codable, Searchable {
    let availableMarkets: [Country]
    let copyrights: [Copyright]
    let description: String
    let explicit: Bool
    let externalUrls: ExternalUrl
    let href: String
    let id: String
    let images: [Image]
    let isExternallyHosted: Bool?
    let languages: [Language]
    let mediaType: String
    let name: String
    let publisher: String
    let uri: String
}
