//
//  Language.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

struct Language: Codable {
    let locale: Locale
    let iso639code: String

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.iso639code = try container.decode(String.self)
        self.locale = Locale(identifier: iso639code)
    }
}
