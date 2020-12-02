//
//  RecommendationsParameters.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

// FIXME: This should be refactor
public struct RecommendationsParameters: Codable, Equatable {
    public let seedArtists: String
    public let seedGenres: String
    public let seedTracks: String
    public let limit: Int?
    public let market: Country?
    public let minAcousticness: Double?
    public let maxAcousticness: Double?
    public let targetAcousticness: Double?
    public let minDanceability: Double?
    public let maxDanceability: Double?
    public let targetDanceability: Double?
    public let minDurationMs: Int?
    public let maxDurationMs: Int?
    public let targetDurationMs: Int?
    public let minEnergy: Double?
    public let maxEnergy: Double?
    public let targetEnergy: Double?
    public let minInstrumentalness: Double?
    public let maxInstrumentalness: Double?
    public let targetInstrumentalness: Double?
    public let minKey: Pitch?
    public let maxKey: Pitch?
    public let targetKey: Pitch?
    public let minLiveness: Double?
    public let maxLiveness: Double?
    public let targetLiveness: Double?
    public let minLoudness: Double?
    public let maxLoudness: Double?
    public let targetLoudness: Double?
    public let minMode: Modality?
    public let maxMode: Modality?
    public let targetMode: Modality?
    public let minPopularity: Int?
    public let maxPopularity: Int?
    public let targetPopularity: Int?
    public let minSpeechiness: Double?
    public let maxSpeechiness: Double?
    public let targetSpeechiness: Double?
    public let minTempo: Double?
    public let maxTempo: Double?
    public let targetTempo: Double?
    public let minTimeSignature: Double?
    public let maxTimeSignature: Double?
    public let targetTimeSignature: Double?
    public let minValence: Double?
    public let maxValence: Double?
    public let targetValence: Double?

    public init(seedArtists: String,
                seedGenres: String,
                seedTracks: String,
                limit: Int? = nil,
                market: Country? = nil,
                minAcousticness: Double? = nil,
                maxAcousticness: Double? = nil,
                targetAcousticness: Double? = nil,
                minDanceability: Double? = nil,
                maxDanceability: Double? = nil,
                targetDanceability: Double? = nil,
                minDurationMs: Int? = nil,
                maxDurationMs: Int? = nil,
                targetDurationMs: Int? = nil,
                minEnergy: Double? = nil,
                maxEnergy: Double? = nil,
                targetEnergy: Double? = nil,
                minInstrumentalness: Double? = nil,
                maxInstrumentalness: Double? = nil,
                targetInstrumentalness: Double? = nil,
                minKey: Pitch? = nil,
                maxKey: Pitch? = nil,
                targetKey: Pitch? = nil,
                minLiveness: Double? = nil,
                maxLiveness: Double? = nil,
                targetLiveness: Double? = nil,
                minLoudness: Double? = nil,
                maxLoudness: Double? = nil,
                targetLoudness: Double? = nil,
                minMode: Modality? = nil,
                maxMode: Modality? = nil,
                targetMode: Modality? = nil,
                minPopularity: Int? = nil,
                maxPopularity: Int? = nil,
                targetPopularity: Int? = nil,
                minSpeechiness: Double? = nil,
                maxSpeechiness: Double? = nil,
                targetSpeechiness: Double? = nil,
                minTempo: Double? = nil,
                maxTempo: Double? = nil,
                targetTempo: Double? = nil,
                minTimeSignature: Double? = nil,
                maxTimeSignature: Double? = nil,
                targetTimeSignature: Double? = nil,
                minValence: Double? = nil,
                maxValence: Double? = nil,
                targetValence: Double? = nil) {
        self.seedArtists = seedArtists
        self.seedGenres = seedGenres
        self.seedTracks = seedTracks
        self.limit = limit
        self.market = market
        self.minAcousticness = minAcousticness
        self.maxAcousticness = maxAcousticness
        self.targetAcousticness = targetAcousticness
        self.minDanceability = minDanceability
        self.maxDanceability = maxDanceability
        self.targetDanceability = targetDanceability
        self.minDurationMs = minDurationMs
        self.maxDurationMs = maxDurationMs
        self.targetDurationMs = targetDurationMs
        self.minEnergy = minEnergy
        self.maxEnergy = maxEnergy
        self.targetEnergy = targetEnergy
        self.minInstrumentalness = minInstrumentalness
        self.maxInstrumentalness = maxInstrumentalness
        self.targetInstrumentalness = targetInstrumentalness
        self.minKey = minKey
        self.maxKey = maxKey
        self.targetKey = targetKey
        self.minLiveness = minLiveness
        self.maxLiveness = maxLiveness
        self.targetLiveness = targetLiveness
        self.minLoudness = minLoudness
        self.maxLoudness = maxLoudness
        self.targetLoudness = targetLoudness
        self.minMode = minMode
        self.maxMode = maxMode
        self.targetMode = targetMode
        self.minPopularity = minPopularity
        self.maxPopularity = maxPopularity
        self.targetPopularity = targetPopularity
        self.minSpeechiness = minSpeechiness
        self.maxSpeechiness = maxSpeechiness
        self.targetSpeechiness = targetSpeechiness
        self.minTempo = minTempo
        self.maxTempo = maxTempo
        self.targetTempo = targetTempo
        self.minTimeSignature = minTimeSignature
        self.maxTimeSignature = maxTimeSignature
        self.targetTimeSignature = targetTimeSignature
        self.minValence = minValence
        self.maxValence = maxValence
        self.targetValence = targetValence
    }
}
