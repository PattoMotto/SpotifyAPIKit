//
//  PublicUser.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct PublicUser: Codable, Equatable {
    let displayName: String?
    let externalUrls: ExternalUrl
    let followers: Follower
    let href: String
    let id: String
    let images: [Image]
    let url: String
}
