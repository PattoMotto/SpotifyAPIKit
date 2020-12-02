//
//  AlbumService.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

class AlbumService {
    private let networkClient: NetworkClient

    init(with networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func getAlbums(ids: [String], market: Country? = nil, onCompletion: @escaping (SpotifyResult<[Album]>) -> Void) {
        var parameters = ["ids": ids.queryParameters]
        parameters["market"] = market?.rawValue
        networkClient.request(url: SpotifyEndpoints.albums,
                              parameters: parameters) { (result: SpotifyResult<AlbumsResponse>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.albums))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }

    func getAlbum(id: String, market: Country? = nil, onCompletion: @escaping (SpotifyResult<Album>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.albums + id,
                              parameters: market?.queryParameters,
                              onCompletion: onCompletion)
    }

    func getTracksInAlbum(id: String,
                          market: Country? = nil,
                          pagingParameters: PagingParameters? = nil,
                          onCompletion: @escaping (SpotifyResult<Paging<TrackSimplified>>) -> Void) {
        var parameters = [String: Any]()
        parameters["market"] = market?.rawValue
        pagingParameters?.dictionary?.forEach { parameters[$0.key] = $0.value }
        networkClient.request(url: SpotifyEndpoints.albumsTracks(albumId: id),
                              parameters: parameters,
                              onCompletion: onCompletion)
    }
}
