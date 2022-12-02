#import <Foundation/Foundation.h>
@interface NSArray (Strain)
- (NSArray *)keep:(BOOL)isKeep where:(BOOL(^)(id input))condition;
- (NSArray *)discard:(BOOL(^)(id input))condition;
@end
