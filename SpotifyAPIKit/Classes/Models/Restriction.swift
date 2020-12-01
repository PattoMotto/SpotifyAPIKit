//
//  Restriction.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public enum RestrictionReason: String, Codable {
    case market, product, explicit
}

public struct Restriction: Codable {
    let reason: RestrictionReason
}
