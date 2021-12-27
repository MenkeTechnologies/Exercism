import XCTest
import Foundation
@testable import Strain

private extension XCTest {
    func XCTAssertEqualMultiArray(_ aArray1: [[Int]], _ aArray2: [[Int]]) {
        XCTAssertEqual(Array(aArray1.joined()), Array(aArray2.joined()))
    }
}

class StrainTests: XCTestCase {
    func testEmptyKeep() {

        XCTAssertTrue ([].keep { $0 < 10 }.isEmpty)
    }

    func testKeepEverything() {
        XCTAssertEqual([1, 2, 3], [1, 2, 3].keep { $0 < 10 })
    }

    func testKeepFirstAndLast() {
        XCTAssertEqual([1, 3], [1, 2, 3].keep { $0 % 2 != 0 })
    }

    func testKeepNeitherFirstNorLast() {
        XCTAssertEqual([2, 4], [1, 2, 3, 4, 5].keep { $0 % 2 == 0 })
    }

    func testKeepStrings() {
        let words = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
        let result = words.keep { $0.hasPrefix("z") }
        XCTAssertEqual(["zebra", "zombies", "zealot"], result)
    }

    func testKeepArrays () {
        let  rows = [
            [1, 2, 3],
            [5, 5, 5],
            [5, 1, 2],
            [2, 1, 2],
            [1, 5, 2],
            [2, 2, 1],
            [1, 2, 5]
        ]
        let result = rows.keep { $0.contains(5) }
        XCTAssertEqualMultiArray([[5, 5, 5], [5, 1, 2], [1, 5, 2], [1, 2, 5]], result)
    }

    func testEmptyDiscard() {
        XCTAssertEqual([], [].discard { $0 < 10 })
    }

    func testDiscardNothing() {
        XCTAssertEqual([1, 2, 3], [1, 2, 3].discard { $0 > 10 })
    }

    func testDiscardFirstAndLast() {
        XCTAssertEqual([2], [1, 2, 3].discard { $0 % 2 != 0 })
    }

    func testDiscardNeitherFirstNorLast() {
        XCTAssertEqual([1, 3, 5], [1, 2, 3, 4, 5].discard { $0 % 2 == 0 })
    }

    func testDiscardStrings() {
        let words = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
        let result = words.discard { $0.hasPrefix("z") }
        XCTAssertEqual(["apple", "banana", "cherimoya"], result)
    }

    func testDiscardArrays () {
        let rows = [
            [1, 2, 3],
            [5, 5, 5],
            [5, 1, 2],
            [2, 1, 2],
            [1, 5, 2],
            [2, 2, 1],
            [1, 2, 5]
        ]
        let result = rows.discard { $0.contains(5) }
        XCTAssertEqualMultiArray([[1, 2, 3], [2, 1, 2], [2, 2, 1]], result)
    }

    static var allTests: [(String, (StrainTests) -> () throws -> Void)] {
        return [
            ("testEmptyKeep", testEmptyKeep),
            ("testKeepEverything", testKeepEverything),
            ("testKeepFirstAndLast", testKeepFirstAndLast),
            ("testKeepNeitherFirstNorLast", testKeepNeitherFirstNorLast),
            ("testKeepStrings", testKeepStrings),
            ("testKeepArrays ", testKeepArrays ),
            ("testEmptyDiscard", testEmptyDiscard),
            ("testDiscardNothing", testDiscardNothing),
            ("testDiscardFirstAndLast", testDiscardFirstAndLast),
            ("testDiscardNeitherFirstNorLast", testDiscardNeitherFirstNorLast),
            ("testDiscardStrings", testDiscardStrings),
            ("testDiscardArrays ", testDiscardArrays ),
        ]
    }
}
