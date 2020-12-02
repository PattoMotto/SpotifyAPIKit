//
//  TrackService.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

class TrackService {
    private let networkClient: NetworkClient

    init(with networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func getTracks(ids: [String],
                   market: String? = nil,
                   onCompletion: @escaping (SpotifyResult<[Track]>) -> Void) {
        var parameters: [String: String] = ["ids": ids.queryParameters]
        parameters["market"] = market
        networkClient.request(url: SpotifyEndpoints.tracks,
                              parameters: parameters) { (result: SpotifyResult<TracksResponse>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.tracks))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }

    func getTrack(id: String,
                  onCompletion: @escaping (SpotifyResult<Track>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.tracks + id,
                              onCompletion: onCompletion)
    }

    func getAudioFeatures(ids: [String],
                   onCompletion: @escaping (SpotifyResult<[AudioFeature]>) -> Void) {
        let parameters: [String: String] = ["ids": ids.queryParameters]
        networkClient.request(url: SpotifyEndpoints.audioFeatures,
                              parameters: parameters) { (result: SpotifyResult<AudioFeturesResponse>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.audioFeatures))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }

    func getAudioFeature(id: String,
                         onCompletion: @escaping (SpotifyResult<AudioFeature>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.audioFeatures + id,
                              onCompletion: onCompletion)
    }

    func getAudioAnalysis(id: String,
                          onCompletion: @escaping (SpotifyResult<AudioAnalysis>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.audioAnalysis + id,
                               onCompletion: onCompletion)
     }
}
