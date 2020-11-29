//
//  SearchService.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public struct SearchRequest: Codable {
    let q: String
    let type: String
    let market: String?
    let limit: String?
    let offset: String?
    let includeExternal: String?

    public init(q: String, type: String) {
        self.q = q
        self.type = type
        market = nil
        limit = nil
        offset = nil
        includeExternal = nil
    }
}

struct SearchAlbumResponse: Codable {
    let albums: Pagination<Album>
}

class SearchService {
    private let url = "https://api.spotify.com/v1/search"
    private let networkClient: NetworkClient

    init(with networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func searchAlbum(request: SearchRequest,
                     onCompletion: @escaping (SpotifyResult<Pagination<Album>>) -> Void) {
        networkClient.request(url: url,
                              method: .get,
                              parameters: request) { (result: SpotifyResult<SearchAlbumResponse>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.albums))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }
}
