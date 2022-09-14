#import "Isogram.h"
@implementation Isogram
+ (BOOL)isIsogram:(NSString *)s {
    NSCountedSet *set = [NSCountedSet set];
    for (NSUInteger i = 0; i < s.length; ++i) {
        NSString *c = [[NSString stringWithFormat:@"%c", [s characterAtIndex:i]] lowercaseString];
        if ([c isEqualToString:@"-"] || [c isEqualToString:@" "]) continue;
        [set addObject:c];
    }
    for (NSString *c in set)
        if ([set countForObject:c] > 1) return false;
    return true;
}
@end
