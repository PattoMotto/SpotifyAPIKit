//
//  SearchResponse.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public protocol Searchable: Codable & Equatable {}

struct SearchResponse<T: Searchable>: Decodable {
    public var searchResult: Paging<T>

    init(searchResult: Paging<T>) {
        self.searchResult = searchResult
    }

    enum CodingKeys: String, CaseIterable, CodingKey {
        case albums
        case artists
        case tracks
        case shows
        case episodes
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        switch T.self {
        case is AlbumSimplified.Type:
            self.searchResult = try container.decode(Paging<T>.self, forKey: .albums)
        case is Artist.Type:
            self.searchResult = try container.decode(Paging<T>.self, forKey: .artists)
        case is Track.Type:
            self.searchResult = try container.decode(Paging<T>.self, forKey: .tracks)
        case is ShowSimplified.Type:
            self.searchResult = try container.decode(Paging<T>.self, forKey: .shows)
        case is EpisodeSimplified.Type:
            self.searchResult = try container.decode(Paging<T>.self, forKey: .episodes)
        default:
            throw DecodingError.typeMismatch(T.self,
                                             .init(codingPath: CodingKeys.allCases, debugDescription: ""))
        }
    }
}
