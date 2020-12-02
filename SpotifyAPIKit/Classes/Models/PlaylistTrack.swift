//
//  PlaylistTrack.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct PlaylistTrack: Codable, Equatable {
    let addedAt: String? // TODO: Convert to date YYYY-MM-DDTHH:MM:SSZ
    let addedBy: UserSimplified?
    let isLocal: Bool
    let track: PlaylistTrackData
}
