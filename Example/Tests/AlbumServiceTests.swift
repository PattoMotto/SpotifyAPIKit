//
//  AlbumServiceTests.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Quick
import Nimble
@testable import SpotifyAPIKit

final class AlbumServiceTests: QuickSpec {
    override func spec() {
        describe("AlbumService") {
            var networkClient: NetworkClientMock!
            var service: AlbumService!

            beforeEach {
                networkClient = NetworkClientMock()
                service = AlbumService(with: networkClient)
            }

            context("when getting several albums") {
                var data: [Album]?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = AlbumsResponse(albums: [Album(id: "1234"), Album(id: "ABCD")])
                        service.getAlbums(ids: ["1234", "ABCD"], market: .unitedStates) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/albums/"
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
                        service.getAlbums(ids: ["1234", "ABCD"], market: .unitedStates) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/albums/"
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

            context("when getting an album") {
                var data: Album?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Album(id: "1234")
                        service.getAlbum(id: "1234", market: .unitedStates) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/albums/1234"
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
                        service.getAlbum(id: "1234", market: .unitedStates) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/albums/1234"
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

            context("when getting tracks in album") {
                var data: Paging<TrackSimplified>?
                var error: Error?
                let pagingParameters = PagingParameters(offset: 0, limit: 10)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Paging<TrackSimplified>(items: [TrackSimplified(id: "1234"), TrackSimplified(id: "ABCD")])
                        service.getTracksInAlbum(id: "1234", market: .unitedStates, pagingParameters: pagingParameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/albums/1234/tracks/"
                        expect(networkClient.calledRequestMethod) == .get
                        let queryParameters = networkClient.calledRequestParameters as? [String: Any]
                        expect(queryParameters?["market"] as? String) == "US"
                        expect(queryParameters?["offset"] as? Int) == 0
                        expect(queryParameters?["limit"] as? Int) == 10
                    }

                    it("should return correct data") {
                        expect(data?.items.count) == 2
                        expect(data?.items[0].id) == "1234"
                        expect(data?.items[1].id) == "ABCD"
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.getTracksInAlbum(id: "1234", market: .unitedStates, pagingParameters: pagingParameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/albums/1234/tracks/"
                        expect(networkClient.calledRequestMethod) == .get
                        let queryParameters = networkClient.calledRequestParameters as? [String: Any]
                        expect(queryParameters?["market"] as? String) == "US"
                        expect(queryParameters?["offset"] as? Int) == 0
                        expect(queryParameters?["limit"] as? Int) == 10
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
