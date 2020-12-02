//
//  TrackServiceTests.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Quick
import Nimble
@testable import SpotifyAPIKit

final class TrackServiceTests: QuickSpec {
    override func spec() {
        describe("TrackService") {
            var networkClient: NetworkClientMock!
            var service: TrackService!

            beforeEach {
                networkClient = NetworkClientMock()
                service = TrackService(with: networkClient)
            }

            context("when getting a track") {
                var data: Track?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Track(id: "1234")
                        service.getTrack(id: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/tracks/1234"
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
                        service.getTrack(id: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/tracks/1234"
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

            context("when getting several tracks") {
                var data: [Track]?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = TracksResponse(tracks: [Track(id: "1234"), Track(id: "ABCD")])
                        service.getTracks(ids: ["1234", "ABCD"], market: "from_token") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/tracks/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? [String: String]) == ["ids": "1234,ABCD", "market": "from_token"]
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
                        service.getTracks(ids: ["1234", "ABCD"], market: "from_token") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/tracks/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? [String: String]) == ["ids": "1234,ABCD", "market": "from_token"]
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when getting an audio feature") {
                var data: AudioFeature?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = AudioFeature(id: "1234")
                        service.getAudioFeature(id: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/audio-features/1234"
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
                        service.getAudioFeature(id: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/audio-features/1234"
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

            context("when getting several audio features") {
                var data: [AudioFeature]?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = AudioFeturesResponse(audioFeatures: [AudioFeature(id: "1234"), AudioFeature(id: "ABCD")])
                        service.getAudioFeatures(ids: ["1234", "ABCD"]) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/audio-features/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? [String: String]) == ["ids": "1234,ABCD"]
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
                        service.getAudioFeatures(ids: ["1234", "ABCD"]) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/audio-features/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? [String: String]) == ["ids": "1234,ABCD"]
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }

                context("when getting an audio analysis") {
                    var data: AudioAnalysis?
                    var error: Error?
                    let bars: [AudioTimeInterval] = [AudioTimeInterval(start: 1, duration: 1, confidence: 1)]
                    beforeEach {
                        data = nil
                        error = nil
                    }

                    context("when it succeeds") {
                        beforeEach {
                            networkClient.mockedSuccess = AudioAnalysis(bars: bars)
                            service.getAudioAnalysis(id: "1234") { result in
                                data = result.value
                                error = result.error
                            }
                        }

                        it("should call with correct parameters") {
                            expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/audio-analysis/1234"
                            expect(networkClient.calledRequestMethod) == .get
                            expect(networkClient.calledRequestParameters).to(beNil())
                        }

                        it("should return correct data") {
                            expect(data?.bars) == bars
                        }

                        it("should not return error") {
                            expect(error).to(beNil())
                        }
                    }
                    context("when it fails") {
                        beforeEach {
                            networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                            service.getAudioAnalysis(id: "1234") { result in
                                data = result.value
                                error = result.error
                            }
                        }

                        it("should call with correct parameters") {
                            expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/audio-analysis/1234"
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
}
