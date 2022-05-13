#import "DifferenceOfSquares.h"

@interface DifferenceOfSquares ()
@property (nonatomic, assign) NSInteger max;
@end
@implementation DifferenceOfSquares
- (instancetype)initWithMax:(NSInteger)max
{
    self = [super init];
    if (self) {
        self.max = max;
    }
    return self;
}
- (NSInteger)squareOfSum
{
    NSInteger sum = 0;
    for (NSInteger i = 1; i <= self.max; ++i) {
        sum += i;
    }
    return (NSInteger)pow(sum, 2);
}
- (NSInteger)sumOfSquares
{
    NSInteger sum = 0;
    for (NSInteger i = 1; i <= self.max; ++i) {
        sum += pow(i, 2);
    }
    return (NSInteger)sum;
}
- (NSInteger)differenceOfSquares
{
    return self.squareOfSum - self.sumOfSquares;
}
@end
