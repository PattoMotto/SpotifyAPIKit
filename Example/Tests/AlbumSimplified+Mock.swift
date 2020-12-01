//
//  AlbumSimplified+Mock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension AlbumSimplified {
    init(id: String) {
        self.init(albumType: .album,
                  artists: [],
                  availableMarkets: [],
                  externalUrls: ExternalUrl(spotify: ""),
                  href: "",
                  id: id,
                  images: [],
                  name: "",
                  releaseDate: "",
                  releaseDatePrecision: .day,
                  restrictions: nil,
                  uri: "")
    }
}
