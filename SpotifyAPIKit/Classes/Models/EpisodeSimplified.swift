//
//  EpisodeSimplified.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct EpisodeSimplified: Codable, Searchable, Equatable {
    public let audioPreviewUrl: String?
    public let description: String
    public let durationMs: Int
    public let explicit: Bool
    public let externalUrls: ExternalUrl
    public let href: String
    public let id: String
    public let images: [Image]
    public let isExternallyHosted: Bool
    public let isPlayable: Bool
    public let languages: [Language]
    public let name: String
    public let releaseDate: String
    public let releaseDatePrecision: DatePrecision
    public let resumePoint: ResumePoint?
    public let uri: String
}
