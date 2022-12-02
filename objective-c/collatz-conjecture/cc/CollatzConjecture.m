#import "CollatzConjecture.h"
@implementation CollatzConjecture
+ (NSUInteger)stepsForNumber:(NSInteger)number {
    if (number < 1) return NSNotFound;
    
    NSUInteger cnt = 0;
    NSInteger result = number;
    while (result > 1) {
        if (result % 2 == 0) {
            result /= 2;
        } else {
            result = (3 * result) + 1;
        }
        ++cnt;
    }
    return cnt;
}
@end
