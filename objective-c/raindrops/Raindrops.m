#import "Raindrops.h"
@implementation Raindrops
-(id) initWithNumber: (int) n {
    self = [super init];
    if (self) {
        _n = n;
    }
    return self;
}
-(NSString*) sounds {
    NSMutableString* result = [NSMutableString stringWithString:@""];
    if (_n % 3 == 0) {
        [result appendString:@"Pling"];
    }
    if (_n % 5 == 0) {
        [result appendString:@"Plang"];
    }
    if (_n % 7 == 0) {
        [result appendString:@"Plong"];
    }
    if ([result length] == 0) {
        [result appendFormat: @"%d", _n];
    }
    return result;
}
@end

