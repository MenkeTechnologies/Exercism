#import "Strain.h"
@implementation NSArray (Strain)
- (NSArray *)keep:(BOOL)isKeep where:(BOOL(^)(id input))condition {
    __block NSMutableArray *array = [NSMutableArray array];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (condition(obj) && isKeep) {
            [array addObject:obj];
        }
    }];
    return array;
}
- (NSArray *)discard:(BOOL(^)(id input))condition {
    __block NSMutableArray *array = [NSMutableArray array];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (!condition(obj)) {
            [array addObject:obj];
        }
    }];
    return array;
}
@end
