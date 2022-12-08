#import <Foundation/Foundation.h>
@interface WordCount : NSObject
- (instancetype)initWithString:(NSString*)input;
@property(strong, nonatomic) NSDictionary<NSString *, NSNumber *> *count;
@end
