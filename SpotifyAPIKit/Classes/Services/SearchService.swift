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

    func search<T: Searchable>(parameters: SearchParameters,
                               pagingParameters: PagingParameters? = nil,
                               onCompletion: @escaping (SpotifyResult<Paging<T>>) -> Void) {
        var parameters = parameters.dictionary ?? [String: Any]()
        pagingParameters?.dictionary?.forEach { parameters[$0.key] = $0.value }
        networkClient.request(url: SpotifyEndpoints.search,
                              parameters: parameters) { (result: SpotifyResult<SearchResponse<T>>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.searchResult))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }
}
