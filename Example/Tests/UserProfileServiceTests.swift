//
//  UserProfileServiceTests.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Quick
import Nimble
@testable import SpotifyAPIKit

final class UserProfileServiceTests: QuickSpec {
    override func spec() {
        describe("UserProfileService") {
            var networkClient: NetworkClientMock!
            var service: UserProfileService!

            beforeEach {
                networkClient = NetworkClientMock()
                service = UserProfileService(with: networkClient)
            }

            context("when getting my user profile") {
                var data: PrivateUser?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = PrivateUser(id: "1234")
                        service.getMyProfile { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/me/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters).to(beNil())
                    }

                    it("should return correct data") {
                        expect(data?.id) == "1234"
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.getMyProfile { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/me/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters).to(beNil())
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when getting user profile") {
                var data: PublicUser?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = PublicUser(id: "1234")
                        service.getUserProfile(userId: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/users/1234"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters).to(beNil())
                    }

                    it("should return correct data") {
                        expect(data?.id) == "1234"
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.getUserProfile(userId: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/users/1234"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters).to(beNil())
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }
        }
    }
}
