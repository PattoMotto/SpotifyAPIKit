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
            let pagingParameters = PagingParameters(offset: 0, limit: 100)

            beforeEach {
                networkClient = NetworkClientMock()
                service = SearchService(with: networkClient)
            }

            context("when request with all query parameters") {
                let parameters = SearchParameters(q: "FOO", type: .album, market: .unitedStates, includeExternal: "audio")
                beforeEach {
                    service.search(parameters: parameters, pagingParameters: pagingParameters) { (_: SpotifyResult<Paging<AlbumSimplified>>) in }
                }

                it("should call with correct parameters") {
                    expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                    expect(networkClient.calledRequestMethod) == .get
                    let queryParameters = networkClient.calledRequestParameters as? [String: Any]
                    expect(queryParameters?["q"] as? String) == parameters.q
                    expect(queryParameters?["type"] as? String) == parameters.type.rawValue
                    expect(queryParameters?["market"] as? String) == parameters.market?.rawValue
                    expect(queryParameters?["include_external"] as? String) == parameters.includeExternal
                    expect(queryParameters?["offset"] as? Int) == 0
                    expect(queryParameters?["limit"] as? Int) == 100
                }
            }

            context("when request with minimal query parameters") {
                let parameters = SearchParameters(q: "FOO", type: .album)
                beforeEach {
                    service.search(parameters: parameters) { (_: SpotifyResult<Paging<AlbumSimplified>>) in }
                }

                it("should call with correct parameters") {
                    expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                    expect(networkClient.calledRequestMethod) == .get
                    let queryParameters = networkClient.calledRequestParameters as? [String: Any]
                    expect(queryParameters?["q"] as? String) == parameters.q
                    expect(queryParameters?["type"] as? String) == parameters.type.rawValue
                    expect(queryParameters?["market"]).to(beNil())
                    expect(queryParameters?["includeExternal"]).to(beNil())
                    expect(queryParameters?["offset"]).to(beNil())
                    expect(queryParameters?["limit"]).to(beNil())
                }

                context("when request with paging parameters") {
                    beforeEach {
                        service.search(parameters: parameters, pagingParameters: pagingParameters) { (_: SpotifyResult<Paging<AlbumSimplified>>) in }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/search/"
                        expect(networkClient.calledRequestMethod) == .get
                        let queryParameters = networkClient.calledRequestParameters as? [String: Any]
                        expect(queryParameters?["q"] as? String) == parameters.q
                        expect(queryParameters?["type"] as? String) == parameters.type.rawValue
                        expect(queryParameters?["market"]).to(beNil())
                        expect(queryParameters?["includeExternal"]).to(beNil())
                        expect(queryParameters?["offset"] as? Int) == 0
                        expect(queryParameters?["limit"] as? Int) == 100
                    }
                }
            }

            context("when search with album") {
                var data: Paging<AlbumSimplified>?
                var error: Error?
                let parameters = SearchParameters(q: "FOO", type: .album)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<AlbumSimplified>(searchResult: Paging<AlbumSimplified>(items: [AlbumSimplified(id: "1")]))
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<AlbumSimplified>>) in
                            data = result.value
                            error = result.error
                        }
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
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<AlbumSimplified>>) in
                            data = result.value
                            error = result.error
                        }
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
                var data: Paging<Artist>?
                var error: Error?
                let parameters = SearchParameters(q: "FOO", type: .artist)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<Artist>(searchResult: Paging<Artist>(items: [Artist(id: "1")]))
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<Artist>>) in
                            data = result.value
                            error = result.error
                        }
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
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<Artist>>) in
                            data = result.value
                            error = result.error
                        }
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
                var data: Paging<Track>?
                var error: Error?
                let parameters = SearchParameters(q: "FOO", type: .artist)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<Track>(searchResult: Paging<Track>(items: [Track(id: "1")]))
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<Track>>) in
                            data = result.value
                            error = result.error
                        }
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
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<Track>>) in
                            data = result.value
                            error = result.error
                        }
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
                var data: Paging<ShowSimplified>?
                var error: Error?
                let parameters = SearchParameters(q: "FOO", type: .show)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<ShowSimplified>(searchResult: Paging<ShowSimplified>(items: [ShowSimplified(id: "1")]))
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<ShowSimplified>>) in
                            data = result.value
                            error = result.error
                        }
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
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<ShowSimplified>>) in
                            data = result.value
                            error = result.error
                        }
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
                var data: Paging<EpisodeSimplified>?
                var error: Error?
                let parameters = SearchParameters(q: "FOO", type: .show)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = SearchResponse<EpisodeSimplified>(searchResult: Paging<EpisodeSimplified>(items: [EpisodeSimplified(id: "1")]))
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<EpisodeSimplified>>) in
                            data = result.value
                            error = result.error
                        }
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
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.search(parameters: parameters) { (result: SpotifyResult<Paging<EpisodeSimplified>>) in
                            data = result.value
                            error = result.error
                        }
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
