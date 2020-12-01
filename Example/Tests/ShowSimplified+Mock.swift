//
//  ShowSimplified+Mock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension ShowSimplified {
    init(id: String) {
        self.init(availableMarkets: [],
                  copyrights: [],
                  description: "",
                  explicit: false,
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
