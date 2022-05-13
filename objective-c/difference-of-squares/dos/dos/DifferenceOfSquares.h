@import Foundation;
@interface DifferenceOfSquares: NSObject
- (instancetype)initWithMax:(NSInteger)max;
@property (readonly, nonatomic) NSInteger squareOfSum;
@property (readonly, nonatomic) NSInteger sumOfSquares;
@property (readonly, nonatomic) NSInteger differenceOfSquares;
@end
