#import "RomanNumerals.h"

struct factor {
    NSInteger val;
    NSString *sym;
};
static struct factor factors[] = {
        {1000, @"M"}, {900, @"CM"}, {500, @"D"}, {400, @"CD"},
        {100, @"C"}, {90, @"XC"}, {50, @"L"}, {40, @"XL"},
        {10, @"X"}, {9, @"IX"}, {5, @"V"}, {4, @"IV"},
        {1, @"I"}
};

@implementation RomanNumerals
+ (NSString *)romanNumeralsForValue:(NSInteger)value {
    NSMutableString *res = [NSMutableString string];
    for (struct factor *ptrFactor = factors; ptrFactor->val; ++ptrFactor) {
        NSInteger cnt = value / ptrFactor->val;
        [res appendString:[@"" stringByPaddingToLength:cnt * [ptrFactor->sym length] withString:ptrFactor->sym startingAtIndex:0]];
        value %= ptrFactor->val;
    }
    return res;
}
@end
