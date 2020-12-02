//
//  BrowseService.swift
//  Created by PattoMotto on 02/12/2020.
//

import Foundation

class BrowseService {
    private let networkClient: NetworkClient

    init(with networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func getNewReleases(parameters: BrowseParameters? = nil,
                        pagingParameters: PagingParameters? = nil,
                        onCompletion: @escaping (SpotifyResult<Paging<AlbumSimplified>>) -> Void) {
        var parameters = parameters?.dictionary ?? [String: Any]()
        pagingParameters?.dictionary?.forEach { parameters[$0.key] = $0.value }
        networkClient.request(url: SpotifyEndpoints.browseNewReleases,
                              parameters: parameters) { (result: SpotifyResult<NewReleasesResponse>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.albums))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }

    func getFeaturedPlaylists(parameters: BrowseParameters? = nil,
                              pagingParameters: PagingParameters? = nil,
                              onCompletion: @escaping (SpotifyResult<FeaturedPlaylists>) -> Void) {
        var parameters = parameters?.dictionary ?? [String: Any]()
        pagingParameters?.dictionary?.forEach { parameters[$0.key] = $0.value }
        networkClient.request(url: SpotifyEndpoints.browseFeaturedPlaylists,
                              parameters: parameters,
                              onCompletion: onCompletion)
    }

    func getCategories(parameters: BrowseParameters? = nil,
                       pagingParameters: PagingParameters? = nil,
                       onCompletion: @escaping (SpotifyResult<Paging<Category>>) -> Void) {
        var parameters = parameters?.dictionary ?? [String: Any]()
        pagingParameters?.dictionary?.forEach { parameters[$0.key] = $0.value }
        networkClient.request(url: SpotifyEndpoints.browseCategories,
                              parameters: parameters) { (result: SpotifyResult<CategoriesResponse>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.categories))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }

    func getCategory(id: String,
                     parameters: BrowseParameters? = nil,
                     onCompletion: @escaping (SpotifyResult<Category>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.browseCategories + id,
                              parameters: parameters,
                              onCompletion: onCompletion)
    }

    func getPlaylistsInCategory(id: String, onCompletion: @escaping (SpotifyResult<Paging<PlaylistSimplified>>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.browseCategoriesPlaylists(categoryId: id), onCompletion: onCompletion)
    }

    func getRecommendations(parameters: RecommendationsParameters,
                            onCompletion: @escaping (SpotifyResult<RecommendationsResponse>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.recommendations,
                              parameters: parameters,
                              onCompletion: onCompletion)
    }

    func getRecommendationGenres(onCompletion: @escaping (SpotifyResult<[String]>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.recommendationsGenre) { (result: SpotifyResult<GenreResponse>) in
            switch result {
            case .success(let value):
                onCompletion(.success(value.genres))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }
}
