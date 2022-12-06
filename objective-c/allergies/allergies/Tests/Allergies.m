#import "Allergies.h"

@implementation Allergies
- (instancetype)initWithScore:(Allergen)score {
    self.score = score;
    return self;
}

- (BOOL)hasAllergy:(Allergen)allergen {
    return self.score & allergen;
}
@end
