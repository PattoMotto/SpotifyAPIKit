//
//  Artist+Mock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension Artist {
    init(id: String) {
        self.init(externalUrls: ExternalUrl(spotify: ""),
                  followers: Follower(href: nil, total: 0),
                  genres: [],
                  href: "",
                  id: id,
                  images: [],
                  name: "",
                  popularity: 0,
                  uri: "")
    }
}
