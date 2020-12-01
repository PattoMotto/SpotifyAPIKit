//
//  TrackLink.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct TrackLink: Codable, Equatable {
    public let externalUrls: ExternalUrl
    public let href: String
    public let id: String
    public let uri: String
}
