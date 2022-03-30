import XCTest
@testable import signing

final class signingTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(signing().text, "Hello, World!")
    }
}
