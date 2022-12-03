#import "Grains.h"

@implementation Grains
- (unsigned long long)grainsAtSquareNumber:(NSInteger)n {
    
    if (n < 1 || n > 64) {
        return (unsigned long long int) -1;
    }
    return (unsigned long long int) pow(2, n - 1);
}

- (unsigned long long)grainsAtBoard {
    unsigned long long sum = 0;
    for (int i = 1; i <= 64; ++i) {
        sum += [self grainsAtSquareNumber:i];

    }
    return sum;
}
@end
