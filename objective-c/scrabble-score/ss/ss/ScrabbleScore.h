#import <Foundation/Foundation.h>
@interface ScrabbleScore : NSObject
@property (nonatomic, assign, readonly) NSInteger score;
- (instancetype)initWithWord:(NSString *)word;
+ (NSInteger)score:(NSString *)word;
@end
