//
//  Playlist+Mock.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension Playlist {
    init(id: String) {
        self.init(collaborative: false,
                  description: nil,
                  externalUrls: ExternalUrl(spotify: ""),
                  followers: Follower(href: nil, total: 0),
                  href: "",
                  id: id,
                  images: [],
                  name: "",
                  owner: UserSimplified(displayName: nil, externalUrls: ExternalUrl(spotify: ""), href: "", id: id, uri: ""),
                  public: nil,
                  snapshotId: "",
                  tracks: Paging<PlaylistTrack>(items: []),
                  uri: "")
    }
}
