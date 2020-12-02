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
    static let playlist = spotifyBaseURL + "playlists/"
    static let myPlaylists = spotifyBaseURL + "me/playlists/"
    static let myProfile = spotifyBaseURL + "me/"
    static let userProfile = spotifyBaseURL + "users/"

    static func userPlaylists(userId: String) -> String {
        return spotifyBaseURL + "users/\(userId)/playlists/"
    }

    static func playlistItems(playlistId: String) -> String {
        return spotifyBaseURL + "playlists/\(playlistId)/tracks/"
    }

    static func playlistCoverImage(plalistId: String) -> String {
        return spotifyBaseURL + "playlists/\(plalistId)/images/"
    }
}
