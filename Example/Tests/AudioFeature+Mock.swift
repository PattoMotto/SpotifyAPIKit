//
//  AudioFeature+Mock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension AudioFeature {
    init(id: String) {
        self.init(acousticness: 0,
                  analysisUrl: "",
                  danceability: 0,
                  durationMs: 0,
                  energy: 0,
                  id: id,
                  instrumentalness: 0,
                  key: .a,
                  liveness: 0,
                  loudness: 0,
                  mode: .major,
                  speechiness: 0,
                  tempo: 0,
                  timeSignature: 0,
                  trackHref: "",
                  uri: "",
                  valence: 0)
    }
}
