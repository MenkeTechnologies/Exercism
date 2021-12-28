import XCTest

@testable import LasagnaMaster

final class LasagnaMasterTests: XCTestCase {
    let runAll = Bool(ProcessInfo.processInfo.environment["RUNALL", default: "false"]) ?? false

    func testRemainingMinutesExplicit() {
        XCTAssertEqual(remainingMinutesInOven(elapsedMinutes: 22, expectedMinutesInOven: 100), 78)
    }

    func testRemainingMinutesDefault() throws {

        XCTAssertEqual(remainingMinutesInOven(elapsedMinutes: 22), 18)
    }

    func testPreparationTime() throws {

        XCTAssertEqual(
                preparationTimeInMinutes(
                        layers: "sauce", "noodles", "béchamel", "meat", "mozzarella", "noodles", "ricotta",
                        "eggplant", "béchamel", "noodles", "sauce", "mozzarella"), 24)
    }

    func testPreparationTimeEmpty() throws {

        XCTAssertEqual(preparationTimeInMinutes(), 0)
    }

    func testQuantities() throws {

        let amount = quantities(
                layers: "sauce", "noodles", "béchamel", "meat", "mozzarella", "noodles", "ricotta",
                "eggplant", "béchamel", "noodles", "sauce", "mozzarella")
        XCTAssertTrue(
                amount.noodles == 9 && amount.sauce == 0.4, "expected (noodles: 9, sauce: 0.4, got \(amount)")
    }

    func testQuantitiesNoSauce() throws {

        let amount = quantities(
                layers: "noodles", "béchamel", "noodles", "ricotta", "eggplant", "mozzarella")
        XCTAssertTrue(
                amount.noodles == 6 && amount.sauce == 0, "expected (noodles: 6, sauce: 0, got \(amount)")
    }

    func testQuantitiesNoNoodles() throws {

        let amount = quantities(
                layers: "sauce", "meat", "mozzarella", "eggplant", "béchamel", "sauce", "mozzarella")
        XCTAssertTrue(
                amount.noodles == 0 && amount.sauce == 0.4, "expected (noodles: 0, sauce: 0.4, got \(amount)")
    }

    func testToOz() throws {

        var amount = quantities(
                layers: "sauce", "noodles", "béchamel", "meat", "sauce", "noodles", "sauce", "mozzarella")
        toOz(&amount)
        XCTAssertEqual(amount.sauce, 20.2884, accuracy: 0.001)
    }

    func testRedWineRedInequalLayerCount() throws {

        XCTAssertTrue(
                redWine(layers: "sauce", "noodles", "sauce", "noodles", "meat", "noodles", "mozzarella"))
    }

    func testRedWineRedEqualLayerCount() throws {

        XCTAssertTrue(
                redWine(
                        layers: "sauce", "noodles", "ricotta", "sauce", "noodles", "béchamel", "meat", "noodles",
                        "mozzarella"))
    }

    func testRedWineWhite() throws {

        XCTAssertFalse(
                redWine(
                        layers: "sauce", "noodles", "béchamel", "meat", "mozzarella", "noodles", "sauce", "ricotta",
                        "eggplant", "mozzarella", "béchamel", "noodles", "meat", "sauce", "mozzarella"))
    }

    static var allTests = [
        ("testRemainingMinutesExplicit", testRemainingMinutesExplicit),
        ("testRemainingMinutesDefault", testRemainingMinutesDefault),
        ("testPreparationTime", testPreparationTime),
        ("testPreparationTimeEmpty", testPreparationTimeEmpty),
        ("testQuantities", testQuantities),
        ("testQuantitiesNoSauce", testQuantitiesNoSauce),
        ("testQuantitiesNoNoodles", testQuantitiesNoNoodles),
        ("testToOz", testToOz),
        ("testRedWineRedInequalLayerCount", testRedWineRedInequalLayerCount),
        ("testRedWineRedEqualLayerCount", testRedWineRedEqualLayerCount),
        ("testRedWineWhite", testRedWineWhite),
    ]
}
