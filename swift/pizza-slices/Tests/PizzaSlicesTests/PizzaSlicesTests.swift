import XCTest

@testable import PizzaSlices

final class PizzaSlicesTests: XCTestCase {
  let runAll = Bool(ProcessInfo.processInfo.environment["RUNALL", default: "false"]) ?? false

  func testSliceNormal() throws {
    let size = try XCTUnwrap(sliceSize(diameter: 16, slices: 10))
    XCTAssertEqual(size, Double.pi * 6.4, accuracy: 0.01)
  }

  func testSliceNilDiameter() throws {
    
    XCTAssertNil(sliceSize(diameter: nil, slices: 10))
  }

  func testSliceNilSlices() throws {
    
    XCTAssertNil(sliceSize(diameter: 16, slices: nil))
  }

  func testSliceBadDiameter() throws {
    
    XCTAssertNil(sliceSize(diameter: -16, slices: 10))
  }

  func testSliceBadSlices() throws {
    
    XCTAssertNil(sliceSize(diameter: 16, slices: 0))
  }

  func testABiggest() throws {
    
    let biggest = biggestSlice(diameterA: "16", slicesA: "8", diameterB: "12", slicesB: "6")
    XCTAssertEqual(biggest, "Slice A is bigger")
  }

  func testBBiggest() throws {
    
    let biggest = biggestSlice(diameterA: "16", slicesA: "10", diameterB: "18", slicesB: "12")
    XCTAssertEqual(biggest, "Slice B is bigger")
  }

  func testBothSame() throws {
    
    let biggest = biggestSlice(diameterA: "16", slicesA: "10", diameterB: "16", slicesB: "10")
    XCTAssertEqual(biggest, "Neither slice is bigger")
  }

  func testANil() throws {
    
    let biggest = biggestSlice(diameterA: "-16", slicesA: "8", diameterB: "12", slicesB: "6")
    XCTAssertEqual(biggest, "Slice B is bigger")
  }

  func testBNil() throws {
    
    let biggest = biggestSlice(diameterA: "16", slicesA: "8", diameterB: "-18", slicesB: "12")
    XCTAssertEqual(biggest, "Slice A is bigger")
  }

  func testBothNil() throws {
    
    let biggest = biggestSlice(diameterA: "16", slicesA: "-8", diameterB: "16 inches", slicesB: "8")
    XCTAssertEqual(biggest, "Neither slice is bigger")
  }

  func testZeroIsValid() throws {
    
    let biggest = biggestSlice(diameterA: "0", slicesA: "8", diameterB: "16 inches", slicesB: "8")
    XCTAssertEqual(biggest, "Slice A is bigger")
  }

  static var allTests = [
    ("testSliceNormal", testSliceNormal),
    ("testSliceNilDiameter", testSliceNilDiameter),
    ("testSliceNilSlices", testSliceNilSlices),
    ("testSliceBadDiameter", testSliceBadDiameter),
    ("testSliceBadSlices", testSliceBadSlices),
    ("testABiggest", testABiggest),
    ("testBBiggest", testBBiggest),
    ("testBothSame", testBothSame),
    ("testANil", testANil),
    ("testBNil", testBNil),
    ("testBothNil", testBothNil),
    ("testZeroIsValid", testZeroIsValid),
  ]
}
