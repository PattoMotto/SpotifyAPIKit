//
//  FeaturedPlaylists.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct FeaturedPlaylists: Codable, Equatable {
    public let message: String
    public let playlists: Paging<PlaylistSimplified>
}
