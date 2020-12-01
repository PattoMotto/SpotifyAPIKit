//
//  AlbumSimplified+Mock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension AlbumSimplified {
    init(id: String) {
        self.init(id: id,
                  href: "",
                  name: "",
                  uri: "",
                  albumType: "",
                  releaseDate: "",
                  releaseDatePrecision: .day,
                  availableMarkets: [],
                  artists: [],
                  images: [],
                  restrictions: nil)
    }
}
