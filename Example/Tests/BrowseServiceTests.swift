//
//  BrowseServiceTests.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Quick
import Nimble
@testable import SpotifyAPIKit

final class BrowseServiceTests: QuickSpec {
    override func spec() {
        describe("BrowseService") {
            var networkClient: NetworkClientMock!
            var service: BrowseService!
            let parameters = BrowseParameters(country: .unitedStates, locale: "en-US")
            let pagingParameters = PagingParameters(offset: 0, limit: 10)

            beforeEach {
                networkClient = NetworkClientMock()
                service = BrowseService(with: networkClient)
            }

            context("when getting new releases") {
                var data: Paging<AlbumSimplified>?
                var error: Error?


                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = NewReleasesResponse(albums: Paging<AlbumSimplified>(items: [AlbumSimplified(id: "1234"), AlbumSimplified(id: "ABCD")]))
                        service.getNewReleases(parameters: parameters, pagingParameters: pagingParameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/browse/new-releases/"
                        expect(networkClient.calledRequestMethod) == .get
                        let queryParameters = networkClient.calledRequestParameters as? [String: Any]
                        expect(queryParameters?["limit"] as? Int) == 10
                        expect(queryParameters?["offset"] as? Int) == 0
                        expect(queryParameters?["country"] as? String) == "US"
                        expect(queryParameters?["locale"] as? String) == "en-US"
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
                        service.getNewReleases(parameters: parameters, pagingParameters: pagingParameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/browse/new-releases/"
                        expect(networkClient.calledRequestMethod) == .get
                        let queryParameters = networkClient.calledRequestParameters as? [String: Any]
                        expect(queryParameters?["limit"] as? Int) == 10
                        expect(queryParameters?["offset"] as? Int) == 0
                        expect(queryParameters?["country"] as? String) == "US"
                        expect(queryParameters?["locale"] as? String) == "en-US"
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when getting featured playlists") {
                // TODO: Implement this
            }
            context("when getting all categories") {
                // TODO: Implement this
            }
            context("when getting a category") {
                // TODO: Implement this
            }
            context("when getting playlists in category") {
                // TODO: Implement this
            }
            context("when getting recommendations") {
                // TODO: Implement this
            }
            context("when getting all genres") {
                // TODO: Implement this
            }
        }
    }
}
