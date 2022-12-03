#import <XCTest/XCTest.h>

#import "SecretHandshake.h"

@interface SecretHandshakeTest : XCTestCase

@end

@implementation SecretHandshakeTest

- (void)testHandshake1ToWink {
    SecretHandshake *handshake = [[SecretHandshake alloc] initWithNumber:1];
    XCTAssertEqualObjects(@[@"wink"], handshake.cmds);
}

- (void)testHandshake10ToDoubleBlink {
    SecretHandshake *handshake = [[SecretHandshake alloc] initWithNumber:2];
    XCTAssertEqualObjects(@[@"double blink"], handshake.cmds);
}

- (void)testHandshake100ToCloseYourEyes {
    SecretHandshake *handshake = [[SecretHandshake alloc] initWithNumber:4];
    XCTAssertEqualObjects(@[@"close your eyes"], handshake.cmds);
}

- (void)testHandshake1000ToJump {
    SecretHandshake *handshake = [[SecretHandshake alloc] initWithNumber:8];
    XCTAssertEqualObjects(@[@"jump"], handshake.cmds);
}

- (void)testHandshake11ToWinkAndDoubleBlink {
    SecretHandshake *handshake = [[SecretHandshake alloc] initWithNumber:3];
    NSArray<NSString *> *expected = @[@"wink", @"double blink"];
    XCTAssertEqualObjects(expected, handshake.cmds);
}

- (void)testHandshake10011ToDoubleBlinkAndWink {
    SecretHandshake *handshake = [[SecretHandshake alloc] initWithNumber:19];
    NSArray<NSString *> *expected = @[@"double blink", @"wink"];
    XCTAssertEqualObjects(expected, handshake.cmds);
}

- (void)testHandshake11111ToDoubleBlinkAndWink {
    SecretHandshake *handshake = [[SecretHandshake alloc] initWithNumber:31];
    NSArray<NSString *> *expected = @[@"jump", @"close your eyes", @"double blink", @"wink"];
    XCTAssertEqualObjects(expected, handshake.cmds);
}

- (void)testNonValidHandshake {
    SecretHandshake *handshake = [[SecretHandshake alloc] initWithNumber:0];
    XCTAssertEqualObjects(@[], handshake.cmds);
}

@end
