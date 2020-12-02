//
//  ShowService.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

class ShowService {
    private let networkClient: NetworkClient

    init(with networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func getShows(ids: [String], market: Country? = nil, onCompletion: @escaping (SpotifyResult<[ShowSimplified]>) -> Void) {
        var parameters = ["ids": ids.queryParameters]
        parameters["market"] = market?.rawValue
        networkClient.request(url: SpotifyEndpoints.shows,
                              parameters: parameters) { (result: SpotifyResult<ShowsResponse>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.shows))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }

    func getShow(id: String, market: Country? = nil, onCompletion: @escaping (SpotifyResult<Show>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.shows + id,
                              parameters: market?.queryParameters,
                              onCompletion: onCompletion)
    }

    func getEpisodesInShow(id: String,
                           market: Country? = nil,
                           pagingParameters: PagingParameters? = nil,
                           onCompletion: @escaping (SpotifyResult<Paging<EpisodeSimplified>>) -> Void) {
        var parameters = [String: Any]()
        parameters["market"] = market?.rawValue
        pagingParameters?.dictionary?.forEach { parameters[$0.key] = $0.value }
        networkClient.request(url: SpotifyEndpoints.showsEpisodes(showId: id),
                              parameters: parameters,
                              onCompletion: onCompletion)
    }
}
