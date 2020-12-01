//
//  Context.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public enum ContextType: String, Codable {
    case artist, playlist, album, show
}

public struct Context: Codable, Equatable {
    public let type: ContextType
    public let href: String
    public let externalUrls: ExternalUrl
    public let uri: String
}
