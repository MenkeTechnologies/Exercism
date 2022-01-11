import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

class Triangle {
    private HashSet<Double> doubles;

    Triangle(double side1, double side2, double side3) throws TriangleException {

        List<Double> sides = Arrays.asList(side1, side2, side3);
        Collections.sort(sides);

        if (sides.stream().anyMatch(s -> s <= 0)) throw new TriangleException();

        if (sides.get(0) + sides.get(1) < sides.get(2)) throw new TriangleException();

        doubles = new HashSet<>(sides);
    }

    boolean isEquilateral() {
        return doubles.size() == 1;
    }

    boolean isIsosceles() {
        return doubles.size() <= 2;
    }

    boolean isScalene() {
        return doubles.size() == 3;
    }
}
