class Allergies:

    ALLERGENS = {
        'eggs': 1,
        'peanuts': 2,
        'shellfish': 4,
        'strawberries': 8,
        'tomatoes': 16,
        'chocolate': 32,
        'pollen': 64,
        'cats': 128,
    }

    def __init__(self, mask):
        self.mask = mask

    def allergic_to(self, item):
        return self.mask & self.ALLERGENS[item] > 0

    @property
    def lst(self):
        return [allergen for allergen in self.ALLERGENS if self.allergic_to(allergen)]
