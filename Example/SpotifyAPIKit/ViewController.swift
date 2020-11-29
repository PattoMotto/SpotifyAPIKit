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
        let request = SearchRequest(q: "Taylor Swift", type: "album")
        Spotify.searchAlbum(request: request) { result in
            print(result)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

