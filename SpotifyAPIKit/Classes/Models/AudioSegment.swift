//
//  AudioSegment.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct AudioSegment: Codable, Equatable {
    public let start: Double
    public let duration: Double
    public let confidence: Double
    public let loudnessStart: Double
    public let loudnessMax: Double
    public let loudnessMaxTime: Double
    public let loudnessEnd: Double
    public let pitches: [Double]
    public let timbre: [Double]
}
