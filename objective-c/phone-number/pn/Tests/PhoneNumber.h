#import <Foundation/Foundation.h>
@interface PhoneNumber : NSObject
- (instancetype)initWithString:(NSString*)string;
@property (strong, nonatomic) NSString* number;
@property (strong, nonatomic, readonly) NSString* areaCode;
@end
