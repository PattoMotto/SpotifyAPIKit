//
//  AudioFeature.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct AudioFeature: Codable, Equatable {
    public let acousticness: Double
    public let analysisUrl: String
    public let danceability: Double
    public let durationMs: Int
    public let energy: Double
    public let id: String
    public let instrumentalness: Double
    public let key: Pitch
    public let liveness: Double
    public let loudness: Double
    public let mode: Modality
    public let speechiness: Double
    public let tempo: Double
    public let timeSignature: Int
    public let trackHref: String
    public let uri: String
    public let valence: Double
}
