#import <Foundation/Foundation.h>

@interface Etl : NSObject
+ (NSDictionary<NSString *, NSNumber *> *)transform:(NSDictionary<NSNumber *, NSArray<NSString *> * > *)dict;
@end
