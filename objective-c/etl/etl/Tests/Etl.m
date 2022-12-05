#import "Etl.h"

@implementation Etl
+ (NSDictionary<NSString *, NSNumber *> *)transform:(NSDictionary<NSNumber *, NSArray<NSString *> * > *)dict; {
    NSMutableDictionary<NSString *, NSNumber *> *res = [[NSMutableDictionary<NSString *, NSNumber *> alloc] init];
    for (NSNumber *score in dict) {
        for (NSString *letter in dict[score]) {
            res[letter.lowercaseString] = score;
        }
    }
    return res;
}
@end
