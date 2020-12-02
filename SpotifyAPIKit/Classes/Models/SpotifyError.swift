//
//  SpotifyError.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

// Ref: https://developer.spotify.com/documentation/web-api/#response-status-codes
public enum SpotifyError: LocalizedError {
    case unknown(code: Int?, message: String?)
    case notModified(String)
    case badRequest(String)
    case unauthorized(String)
    case forbidden(String)
    case notFound(String)
    case tooManyRequests(String)
    case internalServerError(String)
    case badGateway(String)
    case serviceUnavailable(String)
    case apiError(Error)


    public var errorDescription: String? {
        switch self {
        case .unknown(let code, let message):
            return "Unknown with code: \(String(describing: code)) message: \(String(describing: message))"
        case .notModified(let message), .badRequest(let message), .unauthorized(let message), .forbidden(let message),
             .notFound(let message), .tooManyRequests(let message), .internalServerError(let message),
             .badGateway(let message), .serviceUnavailable(let message):
            return message
        case .apiError(let error):
            return error.localizedDescription
        }
    }
}

struct SpotifyErrorModel: Codable {
    let status: Int
    let message: String

    var spotifyError: SpotifyError {
        switch status {
        case 304:
            return .notModified(message)
        case 400:
            return .badRequest(message)
        case 401:
            return .unauthorized(message)
        case 403:
            return .forbidden(message)
        case 404:
            return .notFound(message)
        case 429:
            return .tooManyRequests(message)
        case 500:
            return .internalServerError(message)
        case 502:
            return .badGateway(message)
        case 503:
            return .serviceUnavailable(message)
        default:
            return .unknown(code: status, message: message)
        }
    }
}

struct SpotifyErrorResponse: Codable {
    let error: SpotifyErrorModel
}
