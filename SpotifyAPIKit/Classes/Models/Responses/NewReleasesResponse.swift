//
//  NewReleasesResponse.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

struct NewReleasesResponse: Codable {
    let albums: Paging<AlbumSimplified>
}
