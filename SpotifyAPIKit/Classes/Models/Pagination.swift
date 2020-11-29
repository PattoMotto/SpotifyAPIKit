//
//  Pagination.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public struct Pagination<T: Codable>: Codable {
    let items: [T]
    let href: String
    let limit: Int
    let offset: Int
    let next: String?
    let previous: String?
    let total: Int
}
