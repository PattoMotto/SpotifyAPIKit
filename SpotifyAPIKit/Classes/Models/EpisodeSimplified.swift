//
//  EpisodeSimplified.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct EpisodeSimplified: Codable, Searchable {
    let audioPreviewUrl: String?
    let description: String
    let durationMs: Int
    let explicit: Bool
    let externalUrls: ExternalUrl
    let href: String
    let id: String
    let images: [Image]
    let isExternallyHosted: Bool
    let isPlayable: Bool
    let languages: [Language]
    let name: String
    let releaseDate: String
    let releaseDatePrecision: DatePrecision
    let resumePoint: ResumePoint?
    let uri: String
}
