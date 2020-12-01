//
//  Spotify.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public final class Spotify {
    static private let networkClient = NetworkClient()
    static private let searchService = SearchService(with: networkClient)

    public static func setAuthToken(_ token: String) {
        networkClient.update(token: token)
    }

    public static func search<T: Searchable>(request: SearchRequest,
                                             onCompletion: @escaping (SpotifyResult<Pagination<T>>) -> Void) {
        searchService.search(request: request, onCompletion: onCompletion)
    }
}
