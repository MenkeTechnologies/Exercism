#import "Acronym.h"

@implementation Acronym
+ (NSString *)abbreviate:(NSString *)input {
    
    NSRegularExpression* rgx = [NSRegularExpression regularExpressionWithPattern:@"^\\p{L}|(?<=[^\\p{L}'])\\p{L}|(?<=\\p{Ll})\\p{Lu}" options:0 error:nil];
    
    NSMutableString* acronym = [NSMutableString string];
    
    [rgx enumerateMatchesInString:input options:0 range:NSMakeRange(0, input.length) usingBlock:^(NSTextCheckingResult* match, NSMatchingFlags _flags, BOOL* _stop) {
        [acronym appendString:[input substringWithRange:match.range].uppercaseString];
    }];
    return acronym;
}
@end
