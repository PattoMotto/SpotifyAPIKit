//
//  Spotify.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public final class Spotify {
    static private let networkClient = NetworkClient()
    static private let searchService = SearchService(with: networkClient)
    static private let trackService = TrackService(with: networkClient)

    public static func setAuthToken(_ token: String) {
        networkClient.update(token: token)
    }

    public static func search<T: Searchable>(request: SearchRequest,
                                             onCompletion: @escaping (SpotifyResult<Pagination<T>>) -> Void) {
        searchService.search(request: request, onCompletion: onCompletion)
    }

    public static func getTracks(ids: [String],
                                 market: String? = nil,
                                 onCompletion: @escaping (SpotifyResult<[Track]>) -> Void) {
        trackService.getTracks(ids: ids, market: market, onCompletion: onCompletion)
    }

    public static func getTrack(id: String,
                                onCompletion: @escaping (SpotifyResult<Track>) -> Void) {
        trackService.getTrack(id: id, onCompletion: onCompletion)
    }

    public static func getAudioFeatures(ids: [String],
                                        onCompletion: @escaping (SpotifyResult<[AudioFeature]>) -> Void) {
        trackService.getAudioFeatures(ids: ids, onCompletion: onCompletion)
    }

    public static func getAudioFeature(id: String,
                                       onCompletion: @escaping (SpotifyResult<AudioFeature>) -> Void) {
        trackService.getAudioFeature(id: id, onCompletion: onCompletion)
    }

    public static func getAudioAnalysis(id: String,
                                        onCompletion: @escaping (SpotifyResult<AudioAnalysis>) -> Void) {
        trackService.getAudioAnalysis(id: id, onCompletion: onCompletion)
    }
}
