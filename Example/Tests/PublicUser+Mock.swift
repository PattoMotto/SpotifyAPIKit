//
//  PublicUser+Mock.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension PublicUser {
    init(id: String) {
        self.init(displayName: nil,
                  externalUrls: ExternalUrl(spotify: ""),
                  followers: Follower(href: nil, total: 0),
                  href: "",
                  id: id,
                  images: [],
                  uri: "")
    }
}
