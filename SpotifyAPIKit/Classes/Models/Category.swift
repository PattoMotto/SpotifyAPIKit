//
//  Category.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct Category: Codable, Equatable {
    public let href: String
    public let icons: [Image]
    public let id: String
    public let name: String
}
