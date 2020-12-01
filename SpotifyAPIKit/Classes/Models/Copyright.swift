//
//  Copyright.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public enum CopyrightType: String, Codable {
    case copyright = "C"
    case performance = "P"
}
public struct Copyright: Codable {
    let text: String
    let type: CopyrightType
}
