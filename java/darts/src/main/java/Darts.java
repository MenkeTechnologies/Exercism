import static java.lang.Math.pow;

class Darts {

    double distance;
    Darts(double x, double y) {
        distance = pow(pow(x, 2) + pow(y, 2), 0.5);
    }

    int score() {
        return distance > 10 ? 0 : distance > 5 ? 1 : distance > 1 ? 5 : 10;
    }

}
