//
//  Episode+Mock.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension Episode {
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
                  show: ShowSimplified(id: id),
                  uri: "")
    }
}
