class HighScores {

    ArrayList<Integer> scores

    HighScores(integers) {
        scores = integers
    }

    def personalTopThree() {
        scores.toSorted().reverse().take(3)
    }

    def personalBest() {
        scores.toSorted().last()
    }

    def latest() {
        scores.last()

    }
}
