//
//  PlaylistSimplified+Mock.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension PlaylistSimplified {
    init(id: String) {
        self.init(collaborative: false,
                  description: nil,
                  externalUrls: ExternalUrl(spotify: ""),
                  href: "",
                  id: id,
                  images: [],
                  name: "",
                  owner: UserSimplified(displayName: nil, externalUrls: ExternalUrl(spotify: ""), href: "", id: id, uri: ""),
                  public: nil,
                  snapshotId: "",
                  tracks: PlaylistTrackPagingSimplified(href: "", total: 0),
                  uri: "")
    }
}
