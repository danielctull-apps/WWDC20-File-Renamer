import XCTest
@testable import FileRenamer

final class FileRenamerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FileRenamer().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
