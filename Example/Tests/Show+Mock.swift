//
//  Show+Mock.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension Show {
    init(id: String) {
        self.init(availableMarkets: [],
                  copyrights: [],
                  description: "",
                  explicit: false,
                  episodes: Paging<EpisodeSimplified>(items: []),
                  externalUrls: ExternalUrl(spotify: ""),
                  href: "",
                  id: id,
                  images: [],
                  isExternallyHosted: nil,
                  languages: [],
                  mediaType: "",
                  name: "",
                  publisher: "",
                  uri: "")
    }
}
