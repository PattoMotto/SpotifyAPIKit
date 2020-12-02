//
//  EpisodeService.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

class EpisodeService {
    private let networkClient: NetworkClient

    init(with networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func getEpisodes(ids: [String], market: Country? = nil, onCompletion: @escaping (SpotifyResult<[Episode]>) -> Void) {
        var parameters = ["ids": ids.queryParameters]
        parameters["market"] = market?.rawValue
        networkClient.request(url: SpotifyEndpoints.episodes,
                              parameters: parameters) { (result: SpotifyResult<EpisodesResponse>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.episodes))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }

    func getEpisode(id: String, market: Country? = nil, onCompletion: @escaping (SpotifyResult<Episode>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.episodes + id,
                              parameters: market?.queryParameters,
                              onCompletion: onCompletion)
    }
}
