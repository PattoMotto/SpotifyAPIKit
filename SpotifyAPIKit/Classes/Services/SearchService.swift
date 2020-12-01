//
//  SearchService.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

class SearchService {
    private let networkClient: NetworkClient

    init(with networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func search<T: Searchable>(request: SearchRequest,
                   onCompletion: @escaping (SpotifyResult<Pagination<T>>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.search,
                              method: .get,
                              parameters: request) { (result: SpotifyResult<SearchResponse<T>>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.searchResult))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }
}
