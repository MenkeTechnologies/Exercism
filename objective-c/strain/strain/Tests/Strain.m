#import "Strain.h"

@implementation NSArray (Strain)
- (NSArray *)keep:(BOOL)isKeep where:(BOOL(^)(id input))f {
    NSMutableArray *lst = [NSMutableArray array];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger _i, BOOL *_stop) {
        if (f(obj) && isKeep) {
            [lst addObject:obj];
        }
    }];
    return lst;
}

- (NSArray *)discard:(BOOL(^)(id input))f {
    NSMutableArray *lst = [NSMutableArray array];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger _i, BOOL *_stop) {
        if (!f(obj)) {
            [lst addObject:obj];
        }
    }];
    return lst;
}
@end
