import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

class Allergies {
    int mask;

    public Allergies(int mask) {
        this.mask = mask;
    }

    public boolean isAllergicTo(Allergen allergen) {
        return (mask & allergen.getScore()) > 0;
    }

    public List<Allergen> getList() {
        return Arrays.stream(Allergen.values()).filter(this::isAllergicTo).collect(Collectors.toList());
    }
}
