#import "Bob.h"

@implementation Bob
- (NSString *)hey: (NSString *)s {
    unsigned long last_idx = s.length - 1;
    nows = [[s lowercaseString]
              stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    bool allcaps = ([[s uppercaseString] isEqualToString:s] && ![[s lowercaseString] isEqualToString:s]);
    if (nows.length == 0)
        return @"Fine. Be that way!";
    if (allcaps){
        return ([nows characterAtIndex:last_idx] == '?') ? @"Calm down, I know what I'm doing!" : @"Whoa, chill out!";
    }
    return ([nows characterAtIndex:last_idx] == '?' ? @"Sure" : @"Whatever";
}
@end
