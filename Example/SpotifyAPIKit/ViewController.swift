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
        Spotify.setAuthToken("BQBQO5X2knCMqi1GPdyXqGsibp3LdT6gmwuXk6xguu3RbQy_lGsp6pgXt-9S251whxy7Pn_maB8mKaBi_9SQsrW41FPnduMF_DaSc0d26JvEbW8UxEhjZNiflNw7fdTYRa0UQrTFoSQAc0T2q4haCOX_YCKIrkJtYnpB_0R17w")
        //        Spotify.search(request: SearchRequest(q: "Taylor Swift", type: .album)) { (result: SpotifyResult<Pagination<AlbumSimplified>>) in
        //            print(result)
        //        }
        //
        //        Spotify.search(request: SearchRequest(q: "Taylor Swift", type: .artist)) { (result: SpotifyResult<Pagination<Artist>>) in
        //            print(result)
        //        }
        //
        //        Spotify.search(request: SearchRequest(q: "Taylor Swift", type: .track)) { (result: SpotifyResult<Pagination<Track>>) in
        //            print(result)
        //        }
        //
        //        Spotify.search(request: SearchRequest(q: "Taylor Swift", type: .show)) { (result: SpotifyResult<Pagination<ShowSimplified>>) in
        //            print(result)
        //        }
        //
        //        Spotify.search(request: SearchRequest(q: "Taylor Swift", type: .episode)) { (result: SpotifyResult<Pagination<EpisodeSimplified>>) in
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
        //                Spotify.getAudioAnalysis(id: "4R2kfaDFhslZEMJqAFNpdd") { result in
        //                    print(result)
        //                }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

