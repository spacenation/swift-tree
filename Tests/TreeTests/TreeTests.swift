import XCTest
@testable import Tree

final class TreeTests: XCTestCase {

    func testMap() {
        XCTAssertEqual(
            Tree.nonEmpty(.leaf(3)).map({ "\($0)" }),
            Tree.nonEmpty(.leaf("3"))
        )
    }
}
