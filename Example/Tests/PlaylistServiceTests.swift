//
//  PlaylistServiceTests.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Quick
import Nimble
@testable import SpotifyAPIKit

final class PlaylistServiceTests: QuickSpec {
    override func spec() {
        describe("PlaylistService") {
            var networkClient: NetworkClientMock!
            var service: PlaylistService!

            beforeEach {
                networkClient = NetworkClientMock()
                service = PlaylistService(with: networkClient)
            }

            context("when getting my playlist") {
                var data: Paging<PlaylistSimplified>?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Paging<PlaylistSimplified>(items: [PlaylistSimplified(id: "1234"), PlaylistSimplified(id: "ABCD")])
                        service.getMyPlaylists { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/me/playlists/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters).to(beNil())
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
                        service.getMyPlaylists { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/me/playlists/"
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

            context("when getting user's playlist") {
                var data: Paging<PlaylistSimplified>?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Paging<PlaylistSimplified>(items: [PlaylistSimplified(id: "1234"), PlaylistSimplified(id: "ABCD")])
                        service.getUserPlaylists(userId: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/users/1234/playlists/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters).to(beNil())
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
                        service.getUserPlaylists(userId: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/users/1234/playlists/"
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

            context("when creating playlist") {
                var data: Playlist?
                var error: Error?
                let parameters = PlaylistParameters(name: "foo")

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Playlist(id: "1234")
                        service.createPlaylist(userId: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/users/1234/playlists/"
                        expect(networkClient.calledRequestMethod) == .post
                        expect(networkClient.calledRequestParameters as? PlaylistParameters) == parameters
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
                        service.createPlaylist(userId: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/users/1234/playlists/"
                        expect(networkClient.calledRequestMethod) == .post
                        expect(networkClient.calledRequestParameters as? PlaylistParameters) == parameters
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when getting a playlist") {
                var data: Playlist?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Playlist(id: "1234")
                        service.getPlaylist(id: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234"
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
                        service.getPlaylist(id: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234"
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

            context("when updating playlist") {
                var error: Error?
                let parameters = PlaylistParameters(name: "foo")

                beforeEach {
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Playlist(id: "1234")
                        service.updatePlaylist(id: "1234", parameters: parameters) { result in
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234"
                        expect(networkClient.calledRequestMethod) == .put
                        expect(networkClient.calledRequestParameters as? PlaylistParameters) == parameters
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.updatePlaylist(id: "1234", parameters: parameters) { result in
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234"
                        expect(networkClient.calledRequestMethod) == .put
                        expect(networkClient.calledRequestParameters as? PlaylistParameters) == parameters
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when getting playlist's items") {
                var data: Paging<PlaylistTrack>?
                var error: Error?
                let parameters = PlaylistItemsParameters(market: .unitedStates)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Paging<PlaylistTrack>(items: [PlaylistTrack(track: .track(Track(id: "1234"))),
                                                                                    PlaylistTrack(track: .track(Track(id: "ABCD")))])
                        service.getPlaylistItems(id: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/tracks/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters as? [String: String]) == ["market": "US"]
                    }

                    it("should return correct data") {
                        expect(data?.items.count) == 2
                        expect(data?.items[0].track.track?.id) == "1234"
                        expect(data?.items[1].track.track?.id) == "ABCD"
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.getPlaylistItems(id: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/tracks/"
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

            context("when adding items to playlist") {
                var data: Snapshot?
                var error: Error?
                let parameters = CreateItemParameters(position: 1, uris: ["foo"])

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Snapshot(snapshotId: "1234")
                        service.addItemsToPlaylist(id: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/tracks/"
                        expect(networkClient.calledRequestMethod) == .post
                        expect(networkClient.calledRequestParameters as? CreateItemParameters) == parameters
                    }

                    it("should return correct data") {
                        expect(data?.snapshotId) == "1234"
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.addItemsToPlaylist(id: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/tracks/"
                        expect(networkClient.calledRequestMethod) == .post
                        expect(networkClient.calledRequestParameters as? CreateItemParameters) == parameters
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when replacing items to playlist") {
                var data: Snapshot?
                var error: Error?
                let parameters = ReplaceItemParameters(uris: ["foo"], rangeStart: nil, insertBefore: 0, rangeLength: nil, snapshotId: nil)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Snapshot(snapshotId: "1234")
                        service.replaceItemsInPlaylist(id: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/tracks/"
                        expect(networkClient.calledRequestMethod) == .put
                        expect(networkClient.calledRequestParameters as? ReplaceItemParameters) == parameters
                    }

                    it("should return correct data") {
                        expect(data?.snapshotId) == "1234"
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.replaceItemsInPlaylist(id: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/tracks/"
                        expect(networkClient.calledRequestMethod) == .put
                        expect(networkClient.calledRequestParameters as? ReplaceItemParameters) == parameters
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when replacing items to playlist") {
                var data: Snapshot?
                var error: Error?
                let parameters = RemoveItemParameters(tracks: ["foo"], snapshotId: nil)

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Snapshot(snapshotId: "1234")
                        service.removeItemsInPlaylist(id: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/tracks/"
                        expect(networkClient.calledRequestMethod) == .delete
                        expect(networkClient.calledRequestParameters as? RemoveItemParameters) == parameters
                    }

                    it("should return correct data") {
                        expect(data?.snapshotId) == "1234"
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.removeItemsInPlaylist(id: "1234", parameters: parameters) { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/tracks/"
                        expect(networkClient.calledRequestMethod) == .delete
                        expect(networkClient.calledRequestParameters as? RemoveItemParameters) == parameters
                    }

                    it("should not return data") {
                        expect(data).to(beNil())
                    }

                    it("should return error") {
                        expect(error).toNot(beNil())
                    }
                }
            }

            context("when getting a playlist's cover image") {
                var data: Image?
                var error: Error?

                beforeEach {
                    data = nil
                    error = nil
                }

                context("when it succeeds") {
                    beforeEach {
                        networkClient.mockedSuccess = Image(url: "foo", height: 0, width: 0)
                        service.getPlalistCoverImage(id: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/images/"
                        expect(networkClient.calledRequestMethod) == .get
                        expect(networkClient.calledRequestParameters).to(beNil())
                    }

                    it("should return correct data") {
                        expect(data?.url) == "foo"
                    }

                    it("should not return error") {
                        expect(error).to(beNil())
                    }
                }
                context("when it fails") {
                    beforeEach {
                        networkClient.mockedError = SpotifyError.unauthorized("Invalid access token")
                        service.getPlalistCoverImage(id: "1234") { result in
                            data = result.value
                            error = result.error
                        }
                    }

                    it("should call with correct parameters") {
                        expect(networkClient.calledRequestUrl) == "https://api.spotify.com/v1/playlists/1234/images/"
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
