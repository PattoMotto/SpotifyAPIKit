//
//  PlayHistory.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct PlayHistory: Codable, Equatable {
    public let track: TrackSimplified
    public let playedAt: String // TODO: Convert to date YYYY-MM-DDTHH:MM:SSZ
    public let context: Context
}
