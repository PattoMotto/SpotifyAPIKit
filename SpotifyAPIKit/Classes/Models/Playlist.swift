//
//  Playlist.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct Playlist: Codable, Equatable {
    let collaborative: Bool
    let description: String?
    let externalUrls: ExternalUrl
    let followers: Follower
    let href: String
    let id: String
    let images: [Image]
    let name: String
    let owner: UserSimplified
    let `public`: Bool?
    let snapshotId: String
    let tracks: Paging<PlaylistTrack>
    let uri: String
}
