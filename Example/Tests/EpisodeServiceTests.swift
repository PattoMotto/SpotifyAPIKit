//
//  EpisodeServiceTests.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Quick
import Nimble
@testable import SpotifyAPIKit

final class EpisodeServiceTests: QuickSpec {
    override func spec() {
        describe("EpisodeService") {
            var networkClient: NetworkClientMock!
            var service: EpisodeService!

            beforeEach {
                networkClient = NetworkClientMock()
                service = EpisodeService(with: networkClient)
            }

            context("when getting several episodes") {
                var data: [Episode]?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = EpisodesResponse(episodes: [Episode(id: "1234"), Episode(id: "ABCD")])
                        service.getEpisodes(ids: ["1234", "ABCD"], market: .unitedStates) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/episodes/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? [String: String]) == ["ids": "1234,ABCD", "market": "US"]
                    }

                    it("should return correct data") {
                        expect(data?.count) == 2
                        expect(data?[0].id) == "1234"
                        expect(data?[1].id) == "ABCD"
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.getEpisodes(ids: ["1234", "ABCD"], market: .unitedStates) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/episodes/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? [String: String]) == ["ids": "1234,ABCD", "market": "US"]
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when getting an episode") {
                var data: Episode?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Episode(id: "1234")
                        service.getEpisode(id: "1234", market: .unitedStates) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/episodes/1234"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? [String: String]) == ["market": "US"]
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
                        service.getEpisode(id: "1234", market: .unitedStates) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/episodes/1234"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? [String: String]) == ["market": "US"]
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
