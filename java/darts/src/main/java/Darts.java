import static java.lang.Math.pow;

class Darts {

    double distance;
    Darts(double x, double y) {
        distance = pow(pow(x, 2) + pow(y, 2), 0.5);
    }

    int score() {

        if (distance <= 1) {
            return 10;
        }
        if (distance <= 5) {
            return 5;
        }
        if (distance <= 10) {
            return 1;
        }

        return 0;
    }

}
