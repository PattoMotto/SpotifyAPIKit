//
//  PlaylistService.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation



class PlaylistService {
    private let networkClient: NetworkClient

    init(with networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func getMyPlaylists(pagingParameters: PagingParameters? = nil,
                        onCompletion: @escaping (SpotifyResult<Paging<PlaylistSimplified>>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.myPlaylists,
                              parameters: pagingParameters,
                              onCompletion: onCompletion)
    }

    func getUserPlaylists(userId: String,
                          pagingParameters: PagingParameters? = nil,
                          onCompletion: @escaping (SpotifyResult<Paging<PlaylistSimplified>>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.usersPlaylists(userId: userId),
                              parameters: pagingParameters,
                              onCompletion: onCompletion)
    }

    func createPlaylist(userId: String,
                        parameters: PlaylistParameters,
                        onCompletion: @escaping (SpotifyResult<Playlist>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.usersPlaylists(userId: userId),
                              method: .post,
                              parameters: parameters,
                              onCompletion: onCompletion)
    }

    func getPlaylist(id: String, onCompletion: @escaping (SpotifyResult<Playlist>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.playlists + id,
                              onCompletion: onCompletion)
    }

    func updatePlaylist(id: String,
                        parameters: PlaylistParameters,
                        onCompletion: @escaping (SpotifyResult<Void>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.playlists + id,
                              method: .put,
                              parameters: parameters,
                              onCompletion: onCompletion)
    }

    func getPlaylistItems(id: String,
                          parameters: PlaylistItemsParameters,
                          pagingParameters: PagingParameters? = nil,
                          onCompletion: @escaping (SpotifyResult<Paging<PlaylistTrack>>) -> Void) {
        var parameters = parameters.dictionary ?? [String: Any]()
        pagingParameters?.dictionary?.forEach { parameters[$0.key] = $0.value }
        networkClient.request(url: SpotifyEndpoints.playlistsItems(playlistId: id),
                              parameters: parameters,
                              onCompletion: onCompletion)
    }

    func addItemsToPlaylist(id: String,
                            parameters: CreateItemParameters,
                            onCompletion: @escaping (SpotifyResult<Snapshot>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.playlistsItems(playlistId: id),
                              method: .post,
                              parameters: parameters,
                              onCompletion: onCompletion)
    }

    func replaceItemsInPlaylist(id: String,
                                parameters: ReplaceItemParameters,
                                onCompletion: @escaping (SpotifyResult<Snapshot>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.playlistsItems(playlistId: id),
                              method: .put,
                              parameters: parameters,
                              onCompletion: onCompletion)
    }

    func removeItemsInPlaylist(id: String,
                               parameters: RemoveItemParameters,
                               onCompletion: @escaping (SpotifyResult<Snapshot>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.playlistsItems(playlistId: id),
                              method: .delete,
                              parameters: parameters,
                              onCompletion: onCompletion)
    }

    func getPlalistCoverImage(id: String, onCompletion: @escaping (SpotifyResult<Image>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.playlistsImages(plalistId: id),
                              onCompletion: onCompletion)
    }

    // TODO: Implement this
    func updatePlaylistCoverImage(id: String, onCompletion: @escaping (SpotifyResult<Void>) -> Void) {
        //        SpotifyEndpoints.playlistsImages(plalistId: id)
    }
}
