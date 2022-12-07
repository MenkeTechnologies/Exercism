#import "Allergies.h"

@implementation Allergies
- (instancetype)initWithScore:(Allergen)score {
    _score = score;
    return self;
}

- (BOOL)hasAllergy:(Allergen)allergen {
    return _score & allergen;
}
@end
