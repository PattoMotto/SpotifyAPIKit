//
//  ViewController.swift
//  SpotifyAPIKit
//
//  Created by PattoMotto on 11/27/2020.
//  Copyright (c) 2020 PattoMotto. All rights reserved.
//

import UIKit
import SpotifyAPIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Spotify.setAuthToken("BQAAtiuXexhT8FpK2C2YTYCsL3z9ZcqzCoqMN-JRTfle5XB6fzRoaBL35Yw9l_Jr7atYnIaLRO8PH9aHXL8h-N-0kxjtq37IYGyKWig6D28X96Msax09xiFu4ASl2xTrLCnsQvGP3KIexvTKObuDHyUFZFLTG7iMv3ipMEkZ3g")
        //        Spotify.search(parameters: SearchParameters(q: "Taylor Swift", type: .album, includeExternal: "audio"), pagingParameters: PagingParameters(offset: 0, limit: 10)) { (result: SpotifyResult<Paging<AlbumSimplified>>) in
        //            print(result)
        //        }
        //
        //        Spotify.search(parameters: SearchParameters(q: "Taylor Swift", type: .artist)) { (result: SpotifyResult<Paging<Artist>>) in
        //            print(result)
        //        }
        //
        //        Spotify.search(parameters: SearchParameters(q: "Taylor Swift", type: .track)) { (result: SpotifyResult<Paging<Track>>) in
        //            print(result)
        //        }
        //
        //        Spotify.search(parameters: SearchParameters(q: "Taylor Swift", type: .show)) { (result: SpotifyResult<Paging<ShowSimplified>>) in
        //            print(result)
        //        }
        //
        //        Spotify.search(parameters: SearchParameters(q: "Taylor Swift", type: .episode)) { (result: SpotifyResult<Paging<EpisodeSimplified>>) in
        //            print(result)
        //        }
        //
        //        Spotify.getTrack(id: "4R2kfaDFhslZEMJqAFNpdd") { result in
        //            print(result)
        //        }
        //
        //        Spotify.getTracks(ids: ["4R2kfaDFhslZEMJqAFNpdd", "7N015NTIWGjQDddHUdHPoO", "4MGexoZc12lqE0hYkq9YYx"]) { result in
        //            print(result)
        //        }
        //
        //        Spotify.getAudioFeature(id: "4R2kfaDFhslZEMJqAFNpdd") { result in
        //            print(result)
        //        }
        //
        //        Spotify.getAudioFeatures(ids: ["4R2kfaDFhslZEMJqAFNpdd", "7N015NTIWGjQDddHUdHPoO", "4MGexoZc12lqE0hYkq9YYx"]) { result in
        //            print(result)
        //        }
        //
        //        Spotify.getAudioAnalysis(id: "4R2kfaDFhslZEMJqAFNpdd") { result in
        //            print(result)
        //        }
        //
        //        Spotify.getMyProfile { result in
        //            print(result)
        //        }
        //
        //        Spotify.getUserProfile(userId: "358p9ikxymizowfbtycgfm6rf") { result in
        //            print(result)
        //        }
        //
        //        Spotify.getMyPlaylists { result in
        //            print(result)
        //        }
        //
        //        Spotify.getUserPlaylists(userId: "21cuobtgzklre5pibc4o5ejfa") { result in
        //            print(result)
        //        }
        //
        //        Spotify.getPlaylist(id: "36egHI2T37f2WiXAhaFM8d") { result in
        //            print(result)
        //        }
        //
        //        Spotify.getPlaylistItems(id: "36egHI2T37f2WiXAhaFM8d",
        //                                 parameters: PlaylistItemsParameters(market: .unitedStates)) { result in
        //            print(result)
        //        }
        //
        //        Spotify.getAlbums(ids: ["1NAmidJlEaVgA3MpcPFYGq", "2fenSS68JI1h4Fo296JfGr", "0PZ7lAru5FDFHuirTkWe9Z"]) { result in
        //            print(result)
        //        }
        //
        //        Spotify.getAlbum(id: "1NAmidJlEaVgA3MpcPFYGq") { result in
        //            print(result)
        //        }
        //
        //        Spotify.getTracksInAlbum(id: "1NAmidJlEaVgA3MpcPFYGq",
        //                                 market: .unitedStates,
        //                                 pagingParameters: PagingParameters(offset: 0, limit: 10)) { result in
        //            print(result)
        //        }
        //
        //        Spotify.getEpisodes(ids: ["54BCGBcK7A1BY9NHDm4mMF", "5RacHuT007wp9c9n3BOs9z"],
        //                            market: .unitedStates) { result in
        //            print(result)
        //        }
        //
        //        Spotify.getEpisode(id: "54BCGBcK7A1BY9NHDm4mMF",
        //                           market: .unitedStates) { result in
        //            print(result)
        //        }
        //
        //        Spotify.getShows(ids: ["3iiiCciPimh99K9NYoe6XF", "4fGaAqvwW6kWlYoeo43c9P"],
        //                         market: .unitedStates) { result in
        //            print(result)
        //        }
        //
        //        Spotify.getShow(id: "3iiiCciPimh99K9NYoe6XF", market: .unitedStates) { result in
        //            print(result)
        //        }
        //
        //        Spotify.getEpisodesInShow(id: "3iiiCciPimh99K9NYoe6XF",
        //                                  market: .unitedStates,
        //                                  pagingParameters: PagingParameters(offset: 0, limit: 10)) { result in
        //            print(result)
        //        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

