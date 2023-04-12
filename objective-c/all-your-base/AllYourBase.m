#import "AllYourBase.h"
@implementation AllYourBase
+ (NSArray<NSNumber *> *)outputDigitsForInputBase:(NSInteger)inputBase inputDigits:(NSArray<NSNumber *> *)digits outputBase:(NSInteger)outputBase {
    if (inputBase < 2 || outputBase < 2) {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:nil userInfo:nil];
    }
    NSUInteger value = 0;
    for (NSNumber* number in digits) {
        NSUInteger n = number.unsignedIntegerValue;
        if (n >= inputBase) {
            @throw [NSException exceptionWithName:NSInvalidArgumentException reason:nil userInfo:nil];
        }
        value = inputBase * value + n;
    }
    NSMutableArray* result = [NSMutableArray array];
    for (; value > 0; value /= outputBase) {
        NSUInteger x = value % outputBase;
        [result addObject:@(x)];
    }
    return result.reverseObjectEnumerator.allObjects;
}
@end
