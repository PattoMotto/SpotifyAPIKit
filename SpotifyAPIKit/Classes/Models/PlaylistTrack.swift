//
//  PlaylistTrack.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public enum PlaylistTrackData: Codable, Equatable {
    case track(Track)
    case episode(Episode)

    enum CodingKeys: String, CaseIterable, CodingKey {
        case type
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(ObjectType.self, forKey: .type)
        let singleValueContainer = try decoder.singleValueContainer()
        switch type {
        case .episode:
            self = .episode(try singleValueContainer.decode(Episode.self))
        case .track:
            self = .track(try singleValueContainer.decode(Track.self))
        case .album, .artist, .playlist, .show:
            throw DecodingError.typeMismatch(PlaylistTrackData.self,
                                             .init(codingPath: CodingKeys.allCases, debugDescription: ""))
        }
    }

    public func encode(to encoder: Encoder) throws {

    }

    public static func == (lhs: PlaylistTrackData, rhs: PlaylistTrackData) -> Bool {
        switch (lhs, rhs) {
        case (.track(let lTrack), .track(let rTrack)):
            return lTrack == rTrack
        case (.episode(let lEpisode), .episode(let rEpisode)):
            return lEpisode == rEpisode
        default:
            return false
        }
    }
}

public struct PlaylistTrack: Codable, Equatable {
    let addedAt: String? // TODO: Convert to date YYYY-MM-DDTHH:MM:SSZ
    let addedBy: String? // TODO: Convert to date YYYY-MM-DDTHH:MM:SSZ
    let isLocal: Bool
    let track: PlaylistTrackData
}
