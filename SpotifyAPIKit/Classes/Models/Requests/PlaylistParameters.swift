//
//  PlaylistParameters.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct PlaylistParameters: Codable, Equatable {
    public let name: String
    public let `public`: Bool?
    public let collaborative: Bool?
    public let description: String?

    public init(name: String,
                public: Bool? = nil,
                collaborative: Bool? = nil,
                description: String? = nil) {
        self.name = name
        self.public = `public`
        self.collaborative = collaborative
        self.description = description
    }
}
