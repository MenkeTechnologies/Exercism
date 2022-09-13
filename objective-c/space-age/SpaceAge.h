#import <Foundation/Foundation.h>
@interface SpaceAge : NSObject
@property (nonatomic, assign) NSInteger seconds;
@property (nonatomic, assign, readonly) double onEarth;
@property (nonatomic, assign, readonly) double onSaturn;
@property (nonatomic, assign, readonly) double onMars;
@property (nonatomic, assign, readonly) double onJupiter;
@property (nonatomic, assign, readonly) double onMercury;
@property (nonatomic, assign, readonly) double onVenus;
@property (nonatomic, assign, readonly) double onNeptune;
@property (nonatomic, assign, readonly) double onUranus;
-(instancetype)initWithSeconds:(NSInteger)seconds;
@end
