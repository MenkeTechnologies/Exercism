#import <Foundation/Foundation.h>

@interface BeerSongExample : NSObject
@property(assign, nonatomic) NSInteger bottles;
- (instancetype)initWithNumberOfBeerBottles:(NSInteger)bottles;
- (NSString *)singBeerSong;
@end
