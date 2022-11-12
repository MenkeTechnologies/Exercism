import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(MasterMixologistTests.allTests)
    ]
  }
#endif
