//
//  Image.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct Image: Codable, Equatable {
    public let url: String
    public let height: Int?
    public let width: Int?

    public var size: CGSize? {
        guard let width = width, let height = height else { return nil }
        return CGSize(width: width, height: height)
    }
}
