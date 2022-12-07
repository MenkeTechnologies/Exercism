#import "PerfectNumbers.h"

@implementation NumberClassifier
- (instancetype)initWithNumber:(NSUInteger)number {
    _number = number;
    return self;
}

- (NumberClassification)classification {
    NSMutableArray *factors = [NSMutableArray array];
    for (NSUInteger i = 1; i < _number; ++i) {
        if (_number % i == 0) {
            [factors addObject:@(i)];
        }
    }
    NSUInteger aliquot = [[factors valueForKeyPath:@"@sum.unsignedIntegerValue"] unsignedIntegerValue];
    if (aliquot == _number) {return NumberClassificationPerfect;}
    if (aliquot > _number) {return NumberClassificationAbundant;}
    if (aliquot < _number) {return NumberClassificationDeficient;}
    return NumberClassificationNone;
}
@end
