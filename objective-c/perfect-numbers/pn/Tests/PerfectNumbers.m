#import "PerfectNumbers.h"

@implementation NumberClassifier
- (instancetype)initWithNumber:(NSUInteger)number {
    self.number = number;
    return self;
}

- (NumberClassification)classification {
    NSMutableArray *factors = [NSMutableArray array];
    for (NSUInteger i = 1; i < self.number; ++i) {
        if (self.number % i == 0) {
            [factors addObject:@(i)];
        }
    }
    NSUInteger aliquot = [[factors valueForKeyPath:@"@sum.unsignedIntegerValue"] unsignedIntegerValue];
    if (aliquot == self.number) {return NumberClassificationPerfect;}
    if (aliquot > self.number) {return NumberClassificationAbundant;}
    if (aliquot < self.number) {return NumberClassificationDeficient;}
    return NumberClassificationNone;
}
@end
