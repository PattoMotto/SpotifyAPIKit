//
//  PrivateUser+Mock.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension PrivateUser {
    init(id: String) {
        self.init(country: [],
                  displayName: nil,
                  email: nil,
                  explicitContent: nil,
                  externalUrls: ExternalUrl(spotify: ""),
                  followers: Follower(href: nil, total: 0),
                  href: "",
                  id: id,
                  images: [],
                  product: nil,
                  uri: "")
    }
}
