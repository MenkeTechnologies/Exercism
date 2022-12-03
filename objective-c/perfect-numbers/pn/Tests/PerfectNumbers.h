#import "Foundation/Foundation.h"

typedef NS_ENUM(NSUInteger, NumberClassification) {
    NumberClassificationNone,
    NumberClassificationPerfect,
    NumberClassificationDeficient,
    NumberClassificationAbundant
};

@interface NumberClassifier : NSObject
@property (nonatomic, readonly, assign) NumberClassification classification;
- (instancetype)initWithNumber:(NSUInteger)number;
@property (nonatomic, readwrite, assign) NSUInteger number;
@end
