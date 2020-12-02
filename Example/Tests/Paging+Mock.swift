//
//  Paging+Mock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension Paging where T: Codable {
    init(items: [T]) {
        self.init(items: items,
                  href: "",
                  limit: 0,
                  offset: 0,
                  next: "",
                  previous: nil,
                  total: 0)
    }
}
