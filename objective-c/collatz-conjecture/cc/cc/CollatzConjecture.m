#import "CollatzConjecture.h"

@implementation CollatzConjecture
+ (NSUInteger)stepsForNumber:(NSInteger)number {
    if (number < 1) return NSNotFound;

    NSUInteger cnt = 0;
    NSInteger res = number;
    while (res > 1) {
        if (res % 2 == 0) {
            res /= 2;
        } else {
            res = 3 * res + 1;
        }
        ++cnt;
    }
    return cnt;
}
@end
