class Allergies {
    private int score;
    private map<int> allergens;
    function init(int score) {
        self.score = score;
        self.allergens = {"eggs": 1, "peanuts": 2, "shellfish": 4, "strawberries": 8, "tomatoes": 16, "chocolate": 32, "pollen": 64, "cats": 128};
    }

    function allergicTo(string candidate) returns boolean {
        return (self.score & self.allergens[candidate]) > 0;
    }

    function list() returns string[] {
        string[] res = [];
        foreach var [allergen, val] in self.allergens.entries() {
            if (self.allergicTo(allergen)) {
                res.push(allergen);
            }
        }
        return res;
    }
}
