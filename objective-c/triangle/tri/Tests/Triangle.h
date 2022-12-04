#import <Foundation/Foundation.h>

typedef NS_CLOSED_ENUM(NSInteger, TriangleKind) {
    TriangleKindEquilateral,
    TriangleKindIsosceles,
    TriangleKindScalene,
};

@interface Triangle : NSObject
+ (TriangleKind)kindForSides:(float)a :(float)b :(float)c;
@end
