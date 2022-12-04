#import <Foundation/Foundation.h>
@interface BinarySearch : NSObject
@property (strong, nonatomic, readonly) NSArray* list;
- (NSInteger)searchFor:(NSInteger)search;
- (NSInteger)middle;
- (instancetype)initWithArray:(NSArray*)lst;
@end
