//
//  Language.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct Language: Codable, Equatable {
    public let locale: Locale
    public let iso639code: String

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.iso639code = try container.decode(String.self)
        self.locale = Locale(identifier: iso639code)
    }
}
