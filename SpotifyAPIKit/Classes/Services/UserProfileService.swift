//
//  UserProfileService.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

class UserProfileService {
    private let networkClient: NetworkClient

    init(with networkClient: NetworkClient) {
        self.networkClient = networkClient
    }

    func getMyProfile(onCompletion: @escaping (SpotifyResult<PrivateUser>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.myProfile, onCompletion: onCompletion)
    }

    func getUserProfile(userId: String, onCompletion: @escaping (SpotifyResult<PublicUser>) -> Void) {
        networkClient.request(url: SpotifyEndpoints.userProfile + userId, onCompletion: onCompletion)
    }
}
