#import "Leap.h"

@implementation Leap
- (instancetype)initWithCalendarYear:(NSNumber *)year {
    self.year = year.integerValue;
    return self;
}

- (BOOL)isLeapYear {
    return self.year % 4 == 0 && self.year % 100 != 0 || self.year % 400 == 0;
}

@end
