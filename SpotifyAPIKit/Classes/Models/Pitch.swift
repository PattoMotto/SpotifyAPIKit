//
//  Pitch.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

// Ref: https://en.wikipedia.org/wiki/Pitch_class
public enum Pitch: Int, Codable {
    case c = 0
    case cSharp = 1
    case d = 2
    case dSharp = 3
    case e = 4
    case f = 5
    case fSharp = 6
    case g = 7
    case gSharp = 8
    case a = 9
    case aSharp = 10
    case b = 11
    case unknown = -1
}
