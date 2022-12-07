#import "RobotName.h"


@implementation Robot
- (instancetype)init {
    [self reset];
    return self;
}

- (void)reset {
    _name = [NSString stringWithFormat:@"%c%c%u",
                                       arc4random_uniform(26) + 'A',
                                       arc4random_uniform(26) + 'A',
                                       arc4random_uniform(899) + 100];
}

@end
