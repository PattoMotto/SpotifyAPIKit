//
//  PlaylistSimplified.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct PlaylistSimplified: Codable, Equatable {
    let collaborative: Bool
    let description: String?
    let externalUrls: ExternalUrl
    let href: String
    let id: String
    let images: [Image]
    let name: String
//    let owner: User TODO: Add User
    let `public`: Bool?
    let snapshotId: String
//    let tracks: Pagination<PlaylistTrack> TODO: Add PlaylistTrack
    let uri: String
}

