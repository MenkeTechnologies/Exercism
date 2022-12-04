#import "Triangle.h"

@implementation Triangle
+ (TriangleKind)kindForSides:(float)side1 :(float)side2 :(float)side3 {

    NSArray *sides = @[@(side1), @(side2), @(side3)];
    NSSet *countedSet = [[NSSet alloc] initWithArray:sides];
    NSArray *sorted = [sides sortedArrayUsingSelector:@selector(compare:)];

    if ([sorted[0] floatValue] <= 0) {
        [NSException raise:@"ArgumentException"
                    format:@"For a shape to be a triangle at all, all sides have to be of length > 0"];
    }
    
    if ([sorted[0] floatValue] + [sorted[1] floatValue] < [sorted[2] floatValue]) {
        [NSException raise:@"ArgumentException"
                    format:@"For a shape to be a triangle at all, the sum of the lengths of any two sides must be greater than or equal to the length of the third side."];
    }

    if ([countedSet count] == 1) {
        return TriangleKindEquilateral;
    } else if ([countedSet count] == 3) {
        return TriangleKindScalene;
    }
    return TriangleKindIsosceles;
}

@end
