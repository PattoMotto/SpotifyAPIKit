//
//  Category.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

extension SpotifyAPIKit.Category {
    init(id: String) {
        self.init(href: "",
                  icons: [],
                  id: id,
                  name: "")
    }
}
