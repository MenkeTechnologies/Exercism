#import "WordCount.h"

@implementation WordCount
- (instancetype)initWithString:(NSString *)input {
    NSRegularExpression *re = [NSRegularExpression regularExpressionWithPattern:@"\\w+" options:0 error:nil];
    NSCountedSet *stats = [NSCountedSet set];
    [re enumerateMatchesInString:input options:0 range:NSMakeRange(0, input.length) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags _flags, BOOL *_stop) {
        NSString *match = [input substringWithRange:result.range];
        [stats addObject:match.lowercaseString];
    }];
    NSMutableDictionary *counts = [NSMutableDictionary dictionaryWithCapacity:stats.count];
    for (NSString *key in stats) {
        counts[key] = @([stats countForObject:key]);
    }
    _count = counts;
    return self;
}
@end
