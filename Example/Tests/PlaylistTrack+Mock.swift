//
//  PlaylistTrack+Mock.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension PlaylistTrack {
    init(track: PlaylistTrackData) {
        self.init(addedAt: nil,
                  addedBy: nil,
                  isLocal: false,
                  track: track)
    }
}
