//
//  Result.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation

public typealias SpotifyResult<T> = Swift.Result<T, Swift.Error>

extension Swift.Result {
    var value: Success? {
        guard case .success(let value) = self else { return nil }
        return value
    }

    var error: Failure? {
        guard case .failure(let error) = self else { return nil }
        return error
    }
}
