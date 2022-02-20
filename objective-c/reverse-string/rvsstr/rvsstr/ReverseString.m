#import "ReverseString.h"
@implementation NSString (Reverse)
- (NSString *)reverseString
{
    NSMutableString *reversedString = [NSMutableString string];
    NSUInteger charIdx = [self length];
    while(charIdx > 0) [reversedString appendString:[self substringWithRange:NSMakeRange(--charIdx, 1)]];

    return reversedString;
}
@end
