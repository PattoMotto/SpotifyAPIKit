//
//  ExternalIds.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct ExternalIds: Codable, Equatable {
    public let isrc: String?
    public let ean: String?
    public let upc: String?
}
