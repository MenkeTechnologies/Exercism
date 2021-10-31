enum Allergen {
    EGGS(1),
    PEANUTS(2),
    SHELLFISH(4),
    STRAWBERRIES(8),
    TOMATOES(16),
    CHOCOLATE(32),
    POLLEN(64),
    CATS(128)

    int raw = 0

    Allergen(int raw) {
        this.raw = raw
    }
}

class Allergies {
    private int mask

    Allergies(int mask) {
        this.mask = mask
    }

    def allergicTo(String str) {
        def allergen = Allergen.valueOf(str.toUpperCase())
        allergicTo(allergen)
    }

    def allergicTo(Allergen allergen) {
        (mask & allergen.raw) > 0
    }

    ArrayList<String> list() {
        Allergen.values().findAll { allergicTo it }.collect { it.toString().toLowerCase() }.toList()
    }
}
