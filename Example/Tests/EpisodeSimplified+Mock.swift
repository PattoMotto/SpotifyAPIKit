//
//  EpisodeSimplified+Mock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension EpisodeSimplified {
    init(id: String) {
        self.init(audioPreviewUrl: nil,
                  description: "",
                  durationMs: 0,
                  explicit: false,
                  externalUrls: ExternalUrl(spotify: ""),
                  href: "",
                  id: id,
                  images: [],
                  isExternallyHosted: false,
                  isPlayable: false,
                  languages: [],
                  name: "",
                  releaseDate: "",
                  releaseDatePrecision: .day,
                  resumePoint: nil,
                  uri: "")
    }
}
