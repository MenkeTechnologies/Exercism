#import <XCTest/XCTest.h>

#import "CollatzConjecture.h"

@interface CollatzConjectureTest : XCTestCase

@end

@implementation CollatzConjectureTest

- (void)testZeroStepsForOne {
    XCTAssertEqual(0, [CollatzConjecture stepsForNumber:1]);
}

- (void)testDivideIfEven {
    XCTAssertEqual(4, [CollatzConjecture stepsForNumber:16]);
}

- (void)testEvenAndOddSteps {
    XCTAssertEqual(9, [CollatzConjecture stepsForNumber:12]);
}

- (void)testLargeNumberOfEvenAndOddSteps {
    XCTAssertEqual(152, [CollatzConjecture stepsForNumber:1000000]);
}

- (void)testZeroIsAnError {
    XCTAssertEqual([CollatzConjecture stepsForNumber:0], NSNotFound);
}

- (void)testNegativeValueIsAnError {
    XCTAssertEqual([CollatzConjecture stepsForNumber:-15], NSNotFound);
}

@end
