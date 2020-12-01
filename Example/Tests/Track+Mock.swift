//
//  Track+Mock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension Track {
    init(id: String) {
        self.init(album: AlbumSimplified(id: id),
                  artists: [],
                  availableMarkets: [],
                  discNumber: 0,
                  durationMs: 0,
                  explicit: false,
                  externalIds: ExternalIds(isrc: nil, ean: nil, upc: nil),
                  externalUrls: ExternalUrl(spotify: ""),
                  href: "",
                  id: id,
                  isPlayable: nil,
                  linkedFrom: nil,
                  restrictions: nil,
                  name: "",
                  popularity: 0,
                  previewUrl: nil,
                  trackNumber: 0,
                  uri: "",
                  isLocal: false)
    }
}
