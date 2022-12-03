#import "SumOfMultiples.h"

@implementation SumOfMultiples
+ (NSNumber *)toLimit:(NSNumber *)limit inMultiples:(NSArray *)multiples {
    NSInteger sum = 0;
    for (NSInteger n = 1; n < limit.integerValue; ++n) {
        NSUInteger isMultiple = [multiples indexOfObjectPassingTest:^BOOL(NSNumber *factor, NSUInteger _i, BOOL *_stop) {
            return factor.integerValue != 0 && n % factor.integerValue == 0;
        }];
        
        if (isMultiple != NSNotFound) sum += n;
    }

    return @(sum);
}
@end
