//
//  Collection+queryParameters.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

extension Collection where Element == String {
    var queryParameters: String {
        return joined(separator: ",")
    }
}
