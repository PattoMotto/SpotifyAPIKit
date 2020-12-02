//
//  RecommendationsSeed.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public enum SeedType: String, Codable, Equatable {
    case artist = "ARTIST"
    case track = "TRACK"
    case genre = "GENRE"
}

public struct RecommendationsSeed: Codable, Equatable {
    let afterFilteringSize: Int
    let afterRelinkingSize: Int
    let href: String?
    let id: String
    let initialPoolSize: Int
    let type: SeedType
}
