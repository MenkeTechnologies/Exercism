#import "SpaceAge.h"

#define NUM_SECONDS_IN_YEAR 31557600.0

@implementation SpaceAge
-(instancetype)initWithSeconds:(NSInteger)seconds {
    if (self = [super init]) {
        self.seconds = seconds;
    }
    return self;
}
-(double)onEarth {
    return self.seconds / NUM_SECONDS_IN_YEAR;
}
-(double)onSaturn {
    return self.onEarth / 29.447498;
}
-(double)onMars {
    return self.onEarth / 1.8808158;
}
-(double)onJupiter {
    return self.onEarth / 11.862615;
}
-(double)onMercury {
    return self.onEarth / 0.2408467;
}
-(double)onVenus {
    return self.onEarth / 0.61519726;
}
-(double)onNeptune {
    return self.onEarth / 164.79132;
}
-(double)onUranus {
    return self.onEarth / 84.016846;
}
@end
