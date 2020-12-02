//
//  SpotifyEndpoints.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

enum SpotifyEndpoints {
    private static let spotifyBaseURL = "https://api.spotify.com/v1/"

    static let albums = spotifyBaseURL + "albums/"
    static let search = spotifyBaseURL + "search/"
    static let tracks = spotifyBaseURL + "tracks/"
    static let episodes = spotifyBaseURL + "episodes/"
    static let audioFeatures = spotifyBaseURL + "audio-features/"
    static let audioAnalysis = spotifyBaseURL + "audio-analysis/"
    static let playlists = spotifyBaseURL + "playlists/"
    static let myPlaylists = spotifyBaseURL + "me/playlists/"
    static let myProfile = spotifyBaseURL + "me/"
    static let userProfile = spotifyBaseURL + "users/"

    static func albumsTracks(albumId: String) -> String {
        return spotifyBaseURL + "albums/\(albumId)/tracks/"
    }

    static func usersPlaylists(userId: String) -> String {
        return spotifyBaseURL + "users/\(userId)/playlists/"
    }

    static func playlistsItems(playlistId: String) -> String {
        return spotifyBaseURL + "playlists/\(playlistId)/tracks/"
    }

    static func playlistsImages(plalistId: String) -> String {
        return spotifyBaseURL + "playlists/\(plalistId)/images/"
    }
}
