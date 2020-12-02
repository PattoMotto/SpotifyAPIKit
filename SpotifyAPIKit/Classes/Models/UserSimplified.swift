//
//  UserSimplified.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct UserSimplified: Codable, Equatable {
    let displayName: String?
    let externalUrls: ExternalUrl
    let href: String
    let id: String
    let uri: String
}
