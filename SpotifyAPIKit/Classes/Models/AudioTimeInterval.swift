//
//  AudioTimeInterval.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct AudioTimeInterval: Codable, Equatable {
    public let start: Double
    public let duration: Double
    public let confidence: Double
}
