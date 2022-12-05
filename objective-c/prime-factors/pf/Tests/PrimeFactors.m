#import "PrimeFactors.h"

@implementation PrimeFactors
+ (NSArray<NSNumber *> *)factorsForInteger:(NSInteger)start {
    NSMutableArray *res = [NSMutableArray array];
    for (int divisor = 2; start > 1; ++divisor)
        for (; start % divisor == 0; start /= divisor) [res addObject:@(divisor)];
    return res;
}
@end
