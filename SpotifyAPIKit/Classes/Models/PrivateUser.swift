//
//  PrivateUser.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public struct PrivateUser: Codable, Equatable {
    let country: [Country]?
    let displayName: String?
    let email: String?
    let explicitContent: ExplicitContentSetting?
    let externalUrls: ExternalUrl
    let followers: Follower
    let href: String
    let id: String
    let images: [Image]
    let product: String?
    let uri: String
}
