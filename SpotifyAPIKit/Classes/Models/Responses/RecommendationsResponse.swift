//
//  RecommendationsResponse.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct RecommendationsResponse: Codable, Equatable {
    public let seeds: [RecommendationsSeed]
    public let tracks: [TrackSimplified]
}
