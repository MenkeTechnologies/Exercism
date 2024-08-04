class SquareRoot {
    static Integer squareRoot(Integer radicand) {
        (1..radicand / 2).find { it * it == radicand }
    }
}
