#import "Gigasecond.h"
@interface Gigasecond (){
}
@end
@implementation Gigasecond : NSObject
-(instancetype)initWithStartDate:(NSDate*)startDate {
	self = [super init];
	if (self) {
		_gigasecondDate = [startDate dateByAddingTimeInterval: 1e9];
	}
	return self;
}
@end
