//
//  NetworkClient.swift
//  Created by PattoMotto on 28/11/2020.
//  

import Foundation
import Alamofire

enum NetworkRequestMethod {
    case get, delete, post, put, patch
}

typealias Parameters = [String: Any]

class NetworkClient {
    private var header: HTTPHeaders? {
        guard let authToken = authToken else { return nil}
        return HTTPHeaders([.authorization(bearerToken: authToken)])
    }

    private let encoder = URLEncodedFormParameterEncoder(encoder: URLEncodedFormEncoder(keyEncoding: .convertToSnakeCase))

    private let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()

    private var authToken: String? = nil
    private let session: Session

    init() {
        let configuration = URLSessionConfiguration.af.default
        configuration.requestCachePolicy = .reloadIgnoringLocalCacheData

        session = Session(configuration: configuration)
    }

    func update(token: String) {
        authToken = token
    }

    func request<Result>(url: String,
                         method: NetworkRequestMethod = .get,
                         parameters: Parameters? = nil,
                         onCompletion: @escaping (SpotifyResult<Result>) -> Void) where Result : Decodable {
        session.request(url, method: method.httpMethod, parameters: parameters, headers: header)
            .responseDecodable(of: Result.self, decoder: decoder) { [weak self] (response: DataResponse<Result, AFError>) in
                self?.handleResponse(response: response, onCompletion: onCompletion)
            }
    }

    func request<Parameters>(url: String,
                             method: NetworkRequestMethod = .get,
                             parameters: Parameters?,
                             onCompletion: @escaping (SpotifyResult<Void>) -> Void) where Parameters : Encodable {
        request(url: url, method: method, parameters: parameters) { (result: SpotifyResult<EmptyResponse>) in
            switch result {
            case .success:
                onCompletion(.success(()))
            case .failure(let error):
                onCompletion(.failure(error))
            }
        }
    }

    func request<Parameters, Result>(url: String,
                                     method: NetworkRequestMethod = .get,
                                     parameters: Parameters?,
                                     onCompletion: @escaping (SpotifyResult<Result>) -> Void) where Parameters : Encodable, Result : Decodable {
        session.request(url, method: method.httpMethod, parameters: parameters, encoder: encoder, headers: header)
            .responseDecodable(of: Result.self, decoder: decoder) { [weak self] (response: DataResponse<Result, AFError>) in
                self?.handleResponse(response: response, onCompletion: onCompletion)
            }
    }

    func handleResponse<Result>(response: (DataResponse<Result, AFError>),
                                onCompletion: @escaping (SpotifyResult<Result>) -> Void) where Result : Decodable {
        switch response.result {
        case .success(let value):
            onCompletion(.success(value))
        case .failure(AFError.responseSerializationFailed(reason: .decodingFailed(error: let error))) where response.response?.statusCode ?? 0 >= 300:
            guard let data = response.data,
                  let rawError = try? decoder.decode(SpotifyErrorResponse.self, from: data) else {
                onCompletion(.failure(.apiError(error)))
                return
            }
            onCompletion(.failure(rawError.error.spotifyError))
        case .failure(let error):
            onCompletion(.failure(.apiError(error)))
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
        case .put:
            return .put
        case .patch:
            return .patch
        }
    }
}
