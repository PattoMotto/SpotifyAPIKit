//
//  Pagination.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public struct Pagination<T: Codable & Equatable>: Codable, Equatable {
    public let items: [T]
    public let href: String
    public let limit: Int
    public let offset: Int
    public let next: String?
    public let previous: String?
    public let total: Int
}
