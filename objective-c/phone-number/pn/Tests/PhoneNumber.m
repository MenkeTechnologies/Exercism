#import "PhoneNumber.h"

@implementation PhoneNumber
- (instancetype)initWithString:(NSString *)input {
    self.number = [self normalize:input];
    if (!self.number) {
        self.number = @"0000000000";
    }
    return self;
}

- (NSString *)description {
    NSString *area = [self getArea];
    NSString *prefix = [self.number substringWithRange:NSMakeRange(3, 3)];
    NSString *line = [self.number substringFromIndex:6];
    return [NSString stringWithFormat:@"(%@) %@-%@", area, prefix, line];
}

- (NSString *)areaCode {
    return [self getArea];
}

- (NSString *)getArea {
    return [self.number substringToIndex:3];
}

- (NSString *)normalize:(NSString *)input {
    NSMutableString *digits = [NSMutableString stringWithCapacity:11];
    NSRegularExpression *re = [NSRegularExpression regularExpressionWithPattern:@"[0-9]+" options:0 error:nil];
    [re enumerateMatchesInString:input options:0 range:NSMakeRange(0, input.length) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags _flags, BOOL *_stop) {
        [digits appendString:[input substringWithRange:result.range]];
    }];
    if (digits.length == 11) {
        if ([digits characterAtIndex:0] != '1') {return nil;}
        return [digits substringFromIndex:1];
    }
    if (digits.length == 10) {
        return digits;
    }
    return nil;
}
@end
