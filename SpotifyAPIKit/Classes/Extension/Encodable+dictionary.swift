//
//  Encodable.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

extension Encodable {
    var dictionary: [String: Any]? {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        guard let data = try? encoder.encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
