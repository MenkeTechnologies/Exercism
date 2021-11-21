import XCTest

@testable import CustomSigns

final class CustomSignsTests: XCTestCase {
    let runAll = Bool(ProcessInfo.processInfo.environment["RUNALL", default: "false"]) ?? false

    func testBirthday() {
        XCTAssertEqual(birthday, "Birthday")
    }

    func testValentine() throws {

        XCTAssertEqual(valentine, "Valentine's Day")
    }

    func testAnniversary() throws {

        XCTAssertEqual(anniversary, "Anniversary")
    }

    func testSpace() throws {

        XCTAssertEqual(space, " " as Character)
    }

    func testExclamation() throws {

        XCTAssertEqual(exclamation, "!" as Character)
    }

    func testBuildSign() throws {

        XCTAssertEqual(buildSign(for: valentine, name: "Hikaru"), "Happy Valentine's Day Hikaru!")
    }

    func testBuildSign2() throws {

        XCTAssertEqual(buildSign(for: birthday, name: ""), "Happy Birthday !")
    }

    func testGraduation() throws {

        XCTAssertEqual(
                graduationFor(name: "Isabel", year: 1988), "Congratulations Isabel!\nClass of 1988")
    }

    func testCostOfSign() throws {

        XCTAssertEqual(costOf(sign: graduationFor(name: "Isabel", year: 1988)), 94)
    }

    func testCostOfSignEmpty() throws {

        XCTAssertEqual(costOf(sign: ""), 20)
    }

    static var allTests = [
        ("testBirthday", testBirthday),
        ("testValentine", testValentine),
        ("testAnniversary", testAnniversary),
        ("testSpace", testSpace),
        ("testExclamation", testExclamation),
        ("testBuildSign", testBuildSign),
        ("testBuildSign2", testBuildSign2),
        ("testGraduation", testGraduation),
        ("testCostOfSign", testCostOfSign),
        ("testCostOfSignEmpty", testCostOfSignEmpty),
    ]
}
