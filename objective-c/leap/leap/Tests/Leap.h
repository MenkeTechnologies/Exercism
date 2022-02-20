@import Foundation;

@interface Leap: NSNumber

- (instancetype) initWithCalendarYear:(NSNumber *)year;

@property (readonly, nonatomic) BOOL isLeapYear;

@end
