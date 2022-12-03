#import <Foundation/Foundation.h>
@interface SecretHandshake : NSObject
- (instancetype)initWithNumber:(NSInteger)number;
@property (strong, nonatomic) NSArray<NSString*>* cmds;
@end
