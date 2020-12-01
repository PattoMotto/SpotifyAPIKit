//
//  SpotifyError.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

public enum SpotifyError: LocalizedError {
    case unknown
    case accessTokenExpired
    case invalidAccessToken
    case apiError(Error)

    public var errorDescription: String? {
        switch self {
        case .unknown:
            return "Unknown"
        case .accessTokenExpired:
            return "The access token expired"
        case .invalidAccessToken:
            return "Invalid access token"
        case .apiError(let error):
            return error.localizedDescription
        }
    }
}

struct SpotifyErrorModel: Codable {
    let status: Int
    let message: String

    var spotifyError: SpotifyError {
        if status == 401 {
            switch message {
            case SpotifyError.accessTokenExpired.errorDescription:
                return .accessTokenExpired
            case SpotifyError.invalidAccessToken.errorDescription:
                return .invalidAccessToken
            default:
                return .unknown
            }
        }
        return .unknown
    }
}

struct SpotifyErrorResponse: Codable {
    let error: SpotifyErrorModel
}
