#import <Foundation/Foundation.h>

@interface Anagram : NSObject

@property(strong, nonatomic) NSString *input;
@property(strong, nonatomic) NSCountedSet<NSString *> *inputStats;

- (instancetype)initWithString:(NSString *)input;
- (NSArray<NSString *> *)match:(NSArray<NSString *> *)words;

@end
