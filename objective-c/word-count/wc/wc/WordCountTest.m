#import <XCTest/XCTest.h>

#import "WordCount.h"

@interface WordCountTest : XCTestCase

@end

@implementation WordCountTest

- (void)testCountOneWord {
  WordCount *words = [[WordCount alloc] initWithString:@"word"];
  NSDictionary<NSString *, NSNumber *> *expected = @{ @"word" : @1 };
  NSDictionary<NSString *, NSNumber *> *result = [words count];

  XCTAssertEqualObjects(expected, result);
}

- (void)testCountOneOfEeach {
  WordCount *words = [[WordCount alloc] initWithString:@"one of each"];
  NSDictionary<NSString *, NSNumber *> *expected = @{ @"one" : @1, @"of" : @1, @"each" : @1 };
  NSDictionary<NSString *, NSNumber *> *result = [words count];

  XCTAssertEqualObjects(expected, result);
}

- (void)testCountMultipleOccurrences {
  WordCount *words = [[WordCount alloc] initWithString:@"one fish two fish red fish blue fish"];
  NSDictionary<NSString *, NSNumber *> *expected = @{ @"one" : @1, @"fish" : @4, @"two" : @1, @"red" : @1, @"blue" : @1 };
  NSDictionary<NSString *, NSNumber *> *result = [words count];

  XCTAssertEqualObjects(expected, result);
}

- (void)testIgnorePunctation {
  WordCount *words = [[WordCount alloc] initWithString:@"car : carpet as java : javascript!!&@$%^&"];
  NSDictionary<NSString *, NSNumber *> *expected = @{ @"car" : @1, @"carpet" : @1, @"as" : @1, @"java" : @1, @"javascript" : @1 };
  NSDictionary<NSString *, NSNumber *> *result = [words count];

  XCTAssertEqualObjects(expected, result);
}

- (void)testIncludeNumbers {
  WordCount *words = [[WordCount alloc] initWithString:@"testing, 1, 2 testing"];
  NSDictionary<NSString *, NSNumber *> *expected = @{ @"testing" : @2, @"1" : @1, @"2" : @1 };
  NSDictionary<NSString *, NSNumber *> *result = [words count];

  XCTAssertEqualObjects(expected, result);
}

- (void)testNormalizeCase {
  WordCount *words = [[WordCount alloc] initWithString:@"go Go GO"];
  NSDictionary<NSString *, NSNumber *> *expected = @{ @"go" : @3 };
  NSDictionary<NSString *, NSNumber *> *result = [words count];

  XCTAssertEqualObjects(expected, result);
}

@end

