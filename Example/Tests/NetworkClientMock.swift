//
//  NetworkClientMock.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation
@testable import SpotifyAPIKit

final class NetworkClientMock: NetworkClient {
    var calledRequestUrl: String?
    var calledRequestMethod: NetworkRequestMethod?
    var calledRequestParameters: Any?
    var calledUpdateToken: String?

    var mockedSuccess: Any?
    var mockedError: SpotifyError?

    override func update(token: String) {
        calledUpdateToken = token
    }

    override func request<Parameters, Result>(url: String,
                                              method: NetworkRequestMethod,
                                              parameters: Parameters?,
                                              onCompletion: @escaping (SpotifyResult<Result>) -> Void) where Parameters : Encodable, Result : Decodable {
        calledRequestUrl = url
        calledRequestMethod = method
        calledRequestParameters = parameters
        mockedSuccess.flatMap { $0 as? Result }.map {
            onCompletion(.success($0))            
        }
        mockedError.map {
            onCompletion(.failure($0))
        }
    }
}
