//
//  Spotify.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public final class Spotify {
    static private let networkClient = NetworkClient()
    static private let searchService = SearchService(with: networkClient)
    static private let trackService = TrackService(with: networkClient)
    static private let playlistService = PlaylistService(with: networkClient)
    static private let userProfileService = UserProfileService(with: networkClient)
    static private let albumService = AlbumService(with: networkClient)
    static private let episodeService = EpisodeService(with: networkClient)
    static private let showService = ShowService(with: networkClient)
    
    // Mark: - Authentication

    public static func setAuthToken(_ token: String) {
        networkClient.update(token: token)
    }

    // Mark: - Search

    public static func search<T: Searchable>(parameters: SearchParameters,
                                             pagingParameters: PagingParameters? = nil,
                                             onCompletion: @escaping (SpotifyResult<Paging<T>>) -> Void) {
        searchService.search(parameters: parameters, pagingParameters: pagingParameters, onCompletion: onCompletion)
    }

    // Mark: - Track

    public static func getTracks(ids: [String],
                                 market: String? = nil,
                                 onCompletion: @escaping (SpotifyResult<[Track]>) -> Void) {
        trackService.getTracks(ids: ids, market: market, onCompletion: onCompletion)
    }

    public static func getTrack(id: String,
                                onCompletion: @escaping (SpotifyResult<Track>) -> Void) {
        trackService.getTrack(id: id, onCompletion: onCompletion)
    }

    public static func getAudioFeatures(ids: [String],
                                        onCompletion: @escaping (SpotifyResult<[AudioFeature]>) -> Void) {
        trackService.getAudioFeatures(ids: ids, onCompletion: onCompletion)
    }

    public static func getAudioFeature(id: String,
                                       onCompletion: @escaping (SpotifyResult<AudioFeature>) -> Void) {
        trackService.getAudioFeature(id: id, onCompletion: onCompletion)
    }

    public static func getAudioAnalysis(id: String,
                                        onCompletion: @escaping (SpotifyResult<AudioAnalysis>) -> Void) {
        trackService.getAudioAnalysis(id: id, onCompletion: onCompletion)
    }

    // Mark: - User Profile

    public static func getMyProfile(onCompletion: @escaping (SpotifyResult<PrivateUser>) -> Void) {
        userProfileService.getMyProfile(onCompletion: onCompletion)
    }

    public static func getUserProfile(userId: String, onCompletion: @escaping (SpotifyResult<PublicUser>) -> Void) {
        userProfileService.getUserProfile(userId: userId, onCompletion: onCompletion)
    }

    // Mark: - Playlist
    public static func getMyPlaylists(pagingParameters: PagingParameters? = nil,
                                      onCompletion: @escaping (SpotifyResult<Paging<PlaylistSimplified>>) -> Void) {
        playlistService.getMyPlaylists(pagingParameters: pagingParameters, onCompletion: onCompletion)
    }

    public static func getUserPlaylists(userId: String,
                                        pagingParameters: PagingParameters? = nil,
                                        onCompletion: @escaping (SpotifyResult<Paging<PlaylistSimplified>>) -> Void) {
        playlistService.getUserPlaylists(userId: userId, pagingParameters: pagingParameters, onCompletion: onCompletion)
    }

    public static func createPlaylist(userId: String,
                                      parameters: PlaylistParameters,
                                      onCompletion: @escaping (SpotifyResult<Playlist>) -> Void) {
        playlistService.createPlaylist(userId: userId, parameters: parameters, onCompletion: onCompletion)
    }

    public static func getPlaylist(id: String, onCompletion: @escaping (SpotifyResult<Playlist>) -> Void) {
        playlistService.getPlaylist(id: id, onCompletion: onCompletion)
    }

    public static func updatePlaylist(id: String,
                                      parameters: PlaylistParameters,
                                      onCompletion: @escaping (SpotifyResult<Void>) -> Void) {
        playlistService.updatePlaylist(id: id, parameters: parameters, onCompletion: onCompletion)
    }

    public static func getPlaylistItems(id: String,
                                        parameters: PlaylistItemsParameters,
                                        pagingParameters: PagingParameters? = nil,
                                        onCompletion: @escaping (SpotifyResult<Paging<PlaylistTrack>>) -> Void) {
        playlistService.getPlaylistItems(id: id,
                                         parameters: parameters,
                                         pagingParameters: pagingParameters,
                                         onCompletion: onCompletion)
    }

    public static func getAlbums(ids: [String],
                                 market: Country? = nil,
                                 onCompletion: @escaping (SpotifyResult<[Album]>) -> Void) {
        albumService.getAlbums(ids: ids, market: market, onCompletion: onCompletion)
    }

    public static func getAlbum(id: String,
                                market: Country? = nil,
                                onCompletion: @escaping (SpotifyResult<Album>) -> Void) {
        albumService.getAlbum(id: id, market: market, onCompletion: onCompletion)
    }

    public static func getTracksInAlbum(id: String,
                                        market: Country? = nil,
                                        pagingParameters: PagingParameters? = nil,
                                        onCompletion: @escaping (SpotifyResult<Paging<TrackSimplified>>) -> Void) {
        albumService.getTracksInAlbum(id: id,
                                      market: market,
                                      pagingParameters: pagingParameters,
                                      onCompletion: onCompletion
        )
    }

    public static func getEpisodes(ids: [String], market: Country? = nil, onCompletion: @escaping (SpotifyResult<[Episode]>) -> Void) {
        episodeService.getEpisodes(ids: ids, market: market, onCompletion: onCompletion)
    }

    public static func getEpisode(id: String, market: Country? = nil, onCompletion: @escaping (SpotifyResult<Episode>) -> Void) {
        episodeService.getEpisode(id: id, market: market, onCompletion: onCompletion)
    }

    public static func getShows(ids: [String], market: Country? = nil, onCompletion: @escaping (SpotifyResult<[ShowSimplified]>) -> Void) {
        showService.getShows(ids: ids, market: market, onCompletion: onCompletion)
    }

    public static func getShow(id: String, market: Country? = nil, onCompletion: @escaping (SpotifyResult<Show>) -> Void) {
        showService.getShow(id: id, market: market, onCompletion: onCompletion)
    }

    public static func getEpisodesInShow(id: String,
                                         market: Country? = nil,
                                         pagingParameters: PagingParameters? = nil,
                                         onCompletion: @escaping (SpotifyResult<Paging<EpisodeSimplified>>) -> Void) {
        showService.getEpisodesInShow(id: id, market: market, pagingParameters: pagingParameters, onCompletion: onCompletion)
    }
}
