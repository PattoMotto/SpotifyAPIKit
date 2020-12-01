//
//  AudioAnalysis.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct AudioAnalysis: Codable, Equatable {
    public let bars: [AudioTimeInterval]
    public let beats: [AudioTimeInterval]
    public let sections: [AudioSection]
    public let segments: [AudioSegment]
    public let tatums: [AudioTimeInterval]
}
