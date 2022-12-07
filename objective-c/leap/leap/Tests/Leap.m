#import "Leap.h"

@implementation Leap
- (instancetype)initWithCalendarYear:(NSNumber *)year {
    _year = year.integerValue;
    return self;
}

- (BOOL)isLeapYear {
    return _year % 4 == 0 && _year % 100 != 0 || _year % 400 == 0;
}

@end
