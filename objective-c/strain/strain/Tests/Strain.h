#import <Foundation/Foundation.h>

@interface NSArray (Strain)
- (NSArray *)keep:(BOOL)isKeep where:(BOOL(^)(id input))f;
- (NSArray *)discard:(BOOL(^)(id input))f;
@end
