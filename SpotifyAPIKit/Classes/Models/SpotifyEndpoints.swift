//
//  SpotifyEndpoints.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

enum SpotifyEndpoints {
    private static let spotifyBaseURL = "https://api.spotify.com/v1/"

    static let search = spotifyBaseURL + "search/"
    static let tracks = spotifyBaseURL + "tracks/"
    static let audioFeatures = spotifyBaseURL + "audio-features/"
    static let audioAnalysis = spotifyBaseURL + "audio-analysis/"
}
