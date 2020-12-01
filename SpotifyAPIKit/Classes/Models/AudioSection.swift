//
//  AudioSection.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
public struct AudioSection: Codable, Equatable {
    public let start: Double
    public let duration: Double
    public let confidence: Double
    public let loudness: Double
    public let tempo: Double
    public let tempoConfidence: Double
    public let key: Pitch
    public let keyConfidence: Double
    public let mode: Modality
    public let modeConfidence: Double
    public let timeSignature: Double
    public let timeSignatureConfidence: Double
}
