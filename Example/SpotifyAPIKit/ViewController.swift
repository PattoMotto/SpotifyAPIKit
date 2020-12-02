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
        Spotify.setAuthToken("BQDppEnAIXbXA2OxYDCVBBfmnB7e3oB-NVHOqFph1DujJmWCxd9BRAKnA1CH8dPakZYNEzoYiB4wg2UoXoeBL-c4DEoIXm0RA30V3Dx9ab3MO1ixRFfPj_2z5HBO-yKK3tf1_O1AOD-imSG7WpKIbzyOapuHVnbCB7KQP73-7g")
        //                Spotify.search(parameters: SearchParameters(q: "Taylor Swift", type: .album, includeExternal: "audio"), pagingParameters: PagingParameters(offset: 0, limit: 10)) { (result: SpotifyResult<Paging<AlbumSimplified>>) in
        //                    print(result)
        //                }
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

