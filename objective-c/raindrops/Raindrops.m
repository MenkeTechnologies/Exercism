#import "Raindrops.h"
@implementation Raindrops
-(id) initWithNumber: (int) n {
    self = [super init];
    if (self) {
        self.n = n;
    }
    return self;
}
-(NSString*) sounds {
    NSMutableString* result = [NSMutableString stringWithString:@""];
    if (self.n % 3 == 0) {
        [result appendString:@"Pling"];
    }
    if (self.n % 5 == 0) {
        [result appendString:@"Plang"];
    }
    if (self.n % 7 == 0) {
        [result appendString:@"Plong"];
    }
    if ([result length] == 0) {
        [result appendFormat: @"%d", self.n];
    }
    return result;
}
@end

