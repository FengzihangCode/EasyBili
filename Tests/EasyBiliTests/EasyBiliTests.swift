import XCTest
@testable import EasyBili

final class EasyBiliTests: XCTestCase {
    func testFetchPopularVideos() {
        let expectation = self.expectation(description: "Fetch Videos")
        EasyBili.shared.fetchPopularVideos { videos in
            XCTAssertFalse(videos.isEmpty, "Videos should not be empty")
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }
}
