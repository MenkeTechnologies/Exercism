#import "SecretHandshake.h"

@implementation SecretHandshake
- (instancetype)initWithNumber:(NSInteger)number {
    NSMutableArray *cmds = [NSMutableArray array];
    if (number & 1) {[cmds addObject:@"wink"];}
    if (number & 2) {[cmds addObject:@"double blink"];}
    if (number & 4) {[cmds addObject:@"close your eyes"];}
    if (number & 8) {[cmds addObject:@"jump"];}
    if (number & 16) self.cmds = cmds.reverseObjectEnumerator.allObjects; else self.cmds = cmds;
    return self;
}
@end
