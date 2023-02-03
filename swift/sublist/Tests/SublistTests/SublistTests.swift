import XCTest
@testable import Sublist

class SublistTests: XCTestCase {
    func testEmptyLists() {

        XCTAssertEqual(.equal, classifier(lst1: [], lst2: []) )
    }

    func testEmptyListWithinNonEmptyList() {

        XCTAssertEqual(.sublist, classifier(lst1: [], lst2: [1, 2, 3]))
    }

    func testNonEmptyListContainingEmptyList() {

        XCTAssertEqual(.superlist, classifier(lst1: [1, 2, 3], lst2: []))
    }

    func testEqualLists() {

        XCTAssertEqual(.equal, classifier(lst1: [1, 2, 3], lst2: [1, 2, 3]))
    }

    func testDifferentLists() {

        XCTAssertEqual(.unequal, classifier(lst1: [1, 2, 3], lst2: [2, 3, 4]))
    }

    func testFalseStart() {

        XCTAssertEqual(.sublist, classifier(lst1: [1, 2, 5], lst2: [0, 1, 2, 3, 1, 2, 5, 6]))
    }

    func testConsecutive() {

        XCTAssertEqual(.sublist, classifier(lst1: [1, 1, 2], lst2: [0, 1, 1, 1, 2, 1, 2]))

    }

    func testSublistAtStart() {

        XCTAssertEqual(.sublist, classifier(lst1: [0, 1, 2], lst2: [0, 1, 2, 3, 4, 5]))
    }

    func testSublistInMiddle() {

        XCTAssertEqual(.sublist, classifier(lst1: [2, 3, 4], lst2: [0, 1, 2, 3, 4, 5]))

    }

    func testSublistAtEnd() {

        XCTAssertEqual(.sublist, classifier(lst1: [3, 4, 5], lst2: [0, 1, 2, 3, 4, 5]))

    }

    func testAtStartOfSuperList() {

        XCTAssertEqual(.superlist, classifier(lst1: [0, 1, 2, 3, 4, 5], lst2: [0, 1, 2]))

    }

    func testInMiddleOfSuperList() {

        XCTAssertEqual(.superlist, classifier(lst1: [0, 1, 2, 3, 4, 5], lst2: [2, 3]))
    }

    func testAtEndOfSuperList() {

        XCTAssertEqual(.superlist, classifier(lst1: [0, 1, 2, 3, 4, 5], lst2: [3, 4, 5]))
    }

    func testFirstListMissingElementFromSecondList() {

        XCTAssertEqual(.unequal, classifier(lst1: [1, 3], lst2: [1, 2, 3]))

    }

    func testSecondListMissingElementFromFirstList() {

        XCTAssertEqual(.unequal, classifier(lst1: [1, 2, 3], lst2: [1, 3]))
    }

    func testOrderMattersToAList() {

        XCTAssertEqual(.unequal, classifier(lst1: [1, 2, 3], lst2: [3, 2, 1]))

    }

    func testSameDigitsButDifferentNumbers() {

        XCTAssertEqual(.unequal, classifier(lst1: [1, 0, 1], lst2: [10, 1]))
    }

    static var allTests: [(String, (SublistTests) -> () throws -> Void)] {
        return [
            ("testEmptyLists", testEmptyLists),
            ("testEmptyListWithinNonEmptyList", testEmptyListWithinNonEmptyList),
            ("testNonEmptyListContainingEmptyList", testNonEmptyListContainingEmptyList),
            ("testEqualLists", testEqualLists),
            ("testDifferentLists", testDifferentLists),
            ("testFalseStart", testFalseStart),
            ("testConsecutive", testConsecutive),
            ("testSublistAtStart", testSublistAtStart),
            ("testSublistInMiddle", testSublistInMiddle),
            ("testSublistAtEnd", testSublistAtEnd),
            ("testAtStartOfSuperList", testAtStartOfSuperList),
            ("testInMiddleOfSuperList", testInMiddleOfSuperList),
            ("testAtEndOfSuperList", testAtEndOfSuperList),
            ("testFirstListMissingElementFromSecondList", testFirstListMissingElementFromSecondList),
            ("testSecondListMissingElementFromFirstList", testSecondListMissingElementFromFirstList),
            ("testOrderMattersToAList", testOrderMattersToAList),
            ("testSameDigitsButDifferentNumbers", testSameDigitsButDifferentNumbers),
        ]
    }
}
