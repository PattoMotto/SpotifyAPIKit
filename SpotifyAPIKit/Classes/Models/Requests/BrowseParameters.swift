//
//  BrowseParameters.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

public struct BrowseParameters: Codable, Equatable {
    let country: Country?
    let locale: String? // FIXME: Use Locale? this should support en-US
}
