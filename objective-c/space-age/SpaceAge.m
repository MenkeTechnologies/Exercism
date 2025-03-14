#import "SpaceAge.h"

#define NUM_SECONDS_IN_YEAR 31557600.0

@implementation SpaceAge
-(instancetype)initWithSeconds:(NSInteger)seconds {
    if (self = [super init]) {
        _seconds = seconds;
    }
    return self;
}
-(double)onEarth {
    return _seconds / NUM_SECONDS_IN_YEAR;
}
-(double)onSaturn {
    return _onEarth / 29.447498;
}
-(double)onMars {
    return _onEarth / 1.8808158;
}
-(double)onJupiter {
    return _onEarth / 11.862615;
}
-(double)onMercury {
    return _onEarth / 0.2408467;
}
-(double)onVenus {
    return _onEarth / 0.61519726;
}
-(double)onNeptune {
    return _onEarth / 164.79132;
}
-(double)onUranus {
    return _onEarth / 84.016846;
}
@end
