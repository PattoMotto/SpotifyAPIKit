//
//  TrackSimplified.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension TrackSimplified {
    init(id: String) {
        self.init(artists: [],
                  availableMarkets: nil,
                  discNumber: 0,
                  durationMs: 0,
                  explicit: false,
                  externalUrls: ExternalUrl(spotify: ""),
                  href: "",
                  id: id,
                  isPlayable: nil,
                  linkedFrom: nil,
                  restrictions: nil,
                  name: "",
                  previewUrl: nil,
                  trackNumber: 0,
                  uri: "",
                  isLocal: false)
    }
}
