//
//  AudioAnalysis+Mock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension AudioAnalysis {
    init(bars: [AudioTimeInterval]) {
        self.init(bars: bars,
                  beats: [],
                  sections: [],
                  segments: [],
                  tatums: [])
    }
}
