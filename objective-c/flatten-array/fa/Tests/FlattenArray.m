#import <AppKit/AppKit.h>
#import "FlattenArray.h"
@implementation FlattenArrayExample
+ (NSArray *)flattenArray:(NSArray *)array {
    return [self aux:[NSMutableArray array] input:array];
}
+ (NSArray *)aux:(NSMutableArray *)acc input:(NSArray *)ary {
    [ary enumerateObjectsUsingBlock:^(id obj, NSUInteger _i, BOOL * _stop) {
        if ([obj isKindOfClass:[NSArray class]]) {
            [self aux:acc input:obj];
        } else if (![obj isKindOfClass:[NSNull class]]) {
            [acc addObject:obj];
        }
    }];
    return acc;
}
@end
