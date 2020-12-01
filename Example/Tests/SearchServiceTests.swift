//
//  SearchServiceTests.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Quick
import Nimble
@testable import SpotifyAPIKit

final class SearchServiceTests: QuickSpec {
    override func spec() {
        describe("SearchService") {
            var networkClient: NetworkClientMock!
            var service: SearchService!

            beforeEach {
                networkClient = NetworkClientMock()
                service = SearchService(with: networkClient)
            }

            context("when search with album") {
                var data: Pagination<AlbumSimplified>?
                var error: Error?
                let request = SearchRequest(q: "FOO", type: .album)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<AlbumSimplified>(searchResult: Pagination<AlbumSimplified>(items: [AlbumSimplified(id: "1")]))

                        service.search(request: request) { (result: SpotifyResult<Pagination<AlbumSimplified>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should return correct data") {
                        expect(data?.items.count) == 1
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.invalidAccessToken

                        service.search(request: request) { (result: SpotifyResult<Pagination<AlbumSimplified>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should not return correct data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when search with artist") {
                var data: Pagination<Artist>?
                var error: Error?
                let request = SearchRequest(q: "FOO", type: .artist)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<Artist>(searchResult: Pagination<Artist>(items: [Artist(id: "1")]))

                        service.search(request: request) { (result: SpotifyResult<Pagination<Artist>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should return correct data") {
                        expect(data?.items.count) == 1
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.invalidAccessToken

                        service.search(request: request) { (result: SpotifyResult<Pagination<Artist>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should not return correct data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when search with track") {
                var data: Pagination<Track>?
                var error: Error?
                let request = SearchRequest(q: "FOO", type: .artist)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<Track>(searchResult: Pagination<Track>(items: [Track(id: "1")]))

                        service.search(request: request) { (result: SpotifyResult<Pagination<Track>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should return correct data") {
                        expect(data?.items.count) == 1
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.invalidAccessToken

                        service.search(request: request) { (result: SpotifyResult<Pagination<Track>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should not return correct data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when search with show") {
                var data: Pagination<ShowSimplified>?
                var error: Error?
                let request = SearchRequest(q: "FOO", type: .show)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<ShowSimplified>(searchResult: Pagination<ShowSimplified>(items: [ShowSimplified(id: "1")]))

                        service.search(request: request) { (result: SpotifyResult<Pagination<ShowSimplified>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should return correct data") {
                        expect(data?.items.count) == 1
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.invalidAccessToken

                        service.search(request: request) { (result: SpotifyResult<Pagination<ShowSimplified>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should not return correct data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when search with episode") {
                var data: Pagination<EpisodeSimplified>?
                var error: Error?
                let request = SearchRequest(q: "FOO", type: .show)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<EpisodeSimplified>(searchResult: Pagination<EpisodeSimplified>(items: [EpisodeSimplified(id: "1")]))

                        service.search(request: request) { (result: SpotifyResult<Pagination<EpisodeSimplified>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should return correct data") {
                        expect(data?.items.count) == 1
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.invalidAccessToken

                        service.search(request: request) { (result: SpotifyResult<Pagination<EpisodeSimplified>>) in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? SearchRequest) == request
                    }

                    it("should not return correct data") {
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
