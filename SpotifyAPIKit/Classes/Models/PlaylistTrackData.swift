//
//  PlaylistTrackData.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public enum PlaylistTrackData: Codable, Equatable {
    case track(Track)
    case episode(Episode)

    public var track: Track? {
        guard case .track(let track) = self else { return nil }
        return track
    }

    public var episode: Episode? {
        guard case .episode(let episode) = self else { return nil }
        return episode
    }

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

    public func encode(to encoder: Encoder) throws { }

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
