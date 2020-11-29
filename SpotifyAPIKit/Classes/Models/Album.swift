//
//  Album.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public struct Album: Codable {
    let id: String
    let href: String
    let label: String?
    let name: String
    let albumType: String?
    let releaseDate: String?
    let uri: String
}
