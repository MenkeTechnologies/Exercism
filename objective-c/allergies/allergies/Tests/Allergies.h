#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSInteger, Allergen) {
    AllergenEggs = 1,
    AllergenPeanuts = 2,
    AllergenShellfish = 4,
    AllergenStrawberries = 8,
    AllergenTomatoes = 16,
    AllergenChocolate = 32,
    AllergenPollen = 64,
    AllergenCats = 128
};

@interface Allergies : NSObject
@property(assign, nonatomic) Allergen score;
- (instancetype)initWithScore:(Allergen)score;
- (BOOL)hasAllergy:(Allergen)allergen;
@end
