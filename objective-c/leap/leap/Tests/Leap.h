#import "Foundation/Foundation.h"

@interface Leap : NSNumber
@property(nonatomic) NSInteger year;
- (BOOL) isLeapYear;
- (instancetype)initWithCalendarYear:(NSNumber *)year;
@end
