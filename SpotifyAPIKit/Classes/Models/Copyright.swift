//
//  Copyright.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public enum CopyrightType: String, Codable, Equatable {
    case copyright = "C"
    case performance = "P"
}
public struct Copyright: Codable, Equatable {
    public let text: String
    public let type: CopyrightType
}
