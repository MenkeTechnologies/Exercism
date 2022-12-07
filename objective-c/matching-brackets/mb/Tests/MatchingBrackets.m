#import "MatchingBrackets.h"

static NSDictionary<NSString *, NSString *> *dict;

@implementation MatchingBracketsExample
+ (BOOL)validateBracketPairingAndNestingInString:(NSString *)input {

    if (!dict) dict = @{@"(": @")", @"[": @"]", @"{": @"}"};

    NSRegularExpression *re = [NSRegularExpression regularExpressionWithPattern:@"[\\[\\](){}]" options:0 error:nil];
    NSMutableArray *stk = [NSMutableArray arrayWithCapacity:input.length];
    __block BOOL valid = TRUE;

    [re enumerateMatchesInString:input options:0 range:NSMakeRange(0, input.length) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags _flags, BOOL *stop) {
        NSString *bracket = [input substringWithRange:result.range];
        NSString *closing = dict[bracket];
        if (closing) {
            [stk addObject:closing];
        } else {
            if (![bracket isEqualToString:stk.lastObject]) {
                valid = FALSE;
                *stop = TRUE;
            }
            [stk removeLastObject];
        }
    }];
    return valid && !stk.count;
}
@end
