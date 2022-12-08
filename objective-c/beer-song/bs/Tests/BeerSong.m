#import "BeerSong.h"


@implementation BeerSongExample
- (instancetype)initWithNumberOfBeerBottles:(NSInteger)bottles {
    _bottles = bottles;
    return self;
}

static NSString *templates[] = {
        @"No more bottles of beer on the wall, no more bottles of beer.\n"
        "Go to the store and buy some more, 99 bottles of beer on the wall.",
        @"1 bottle of beer on the wall, 1 bottle of beer.\n"
        "Take one down and pass it around, no more bottles of beer on the wall.",
        @"%1$ld bottles of beer on the wall, %1$ld bottles of beer.\n"
        "Take one down and pass it around, %2$ld bottle%3$@ of beer on the wall.",
};
- (NSString *)singBeerSong {
    NSMutableArray *verses = [NSMutableArray array];
    for (NSInteger i = _bottles; i >= 0; --i) {
        NSString *format = i == 0 ? templates[0] : i == 1 ? templates[1] : templates[2];
        NSString *plural = i > 2 ? @"s" : @"";
        [verses addObject:[NSString stringWithFormat:format, i, i - 1, plural]];
    }
    return [verses componentsJoinedByString:@"\n\n"];
}
@end
