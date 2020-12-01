//
//  Show.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct Show: Codable, Equatable {
    public let availableMarkets: [Country]
    public let copyrights: [Copyright]
    public let description: String
    public let explicit: Bool
    public let episodes: [EpisodeSimplified]
    public let externalUrls: ExternalUrl
    public let href: String
    public let id: String
    public let images: [Image]
    public let isExternallyHosted: Bool?
    public let languages: [Language]
    public let mediaType: String
    public let name: String
    public let publisher: String
    public let uri: String
}
