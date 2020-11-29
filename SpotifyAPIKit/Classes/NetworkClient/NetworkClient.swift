//
//  NetworkClient.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation
import Alamofire

enum NetworkRequestMethod {
    case get, delete, post, patch
}

final class NetworkClient {

    private var header: HTTPHeaders? {
        guard let authToken = authToken else { return nil}
        return HTTPHeaders([.authorization(bearerToken: authToken)])
    }

    private let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()

    private var authToken: String? = nil

    func update(token: String) {
        authToken = token
    }
    
    func request<Parameters: Encodable, Result: Decodable>(url: String,
                                                          method: NetworkRequestMethod,
                                                          parameters: Parameters?,
                                                          onCompletion: @escaping (SpotifyResult<Result>) -> Void) {
        AF.request(url, method: method.httpMethod, parameters: parameters, headers: header)
            .responseDecodable(of: Result.self, decoder: decoder) { (response: DataResponse<Result, AFError>) in
            switch response.result {
            case .success(let value):
                onCompletion(.success(value))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }
}

private extension NetworkRequestMethod {
    var httpMethod: HTTPMethod {
        switch self {
        case .get:
            return .get
        case .delete:
            return .delete
        case .post:
            return .post
        case .patch:
            return .patch
        }
    }
}
