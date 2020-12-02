//
//  Album+Mock.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension Album {
    init(id: String) {
        self.init(albumType: .album,
                  artists: [],
                  availableMarkets: [],
                  copyrights: [],
                  externalIds: ExternalIds(isrc: nil, ean: nil, upc: nil),
                  externalUrls: ExternalUrl(spotify: ""),
                  genres: [],
                  href: "",
                  id: id,
                  images: [],
                  label: "",
                  name: "",
                  popularity: 0,
                  releaseDate: "",
                  releaseDatePrecision: .day,
                  restrictions: nil,
                  tracks: Paging<TrackSimplified>(items: []),
                  uri: "")
    }
}
