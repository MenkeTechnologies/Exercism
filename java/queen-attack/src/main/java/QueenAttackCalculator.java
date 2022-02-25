class Queen {
    final int x, y;

    public Queen(int x, int y) {

        if (x < 0) throw new IllegalArgumentException("Queen position must have positive row.");
        if (x > 7) throw new IllegalArgumentException("Queen position must have row <= 7.");
        if (y < 0) throw new IllegalArgumentException("Queen position must have positive column.");
        if (y > 7) throw new IllegalArgumentException("Queen position must have column <= 7.");

        this.x = x;
        this.y = y;
    }
}

class QueenAttackCalculator {
    private final int deltaX;
    private final int deltaY;

    public QueenAttackCalculator(Queen queen1, Queen queen2) {

        if (queen1 == null || queen2 == null)
            throw new IllegalArgumentException("You must supply valid positions for both Queens.");

        if (queen1.x == queen2.x && queen1.y == queen2.y)
            throw new IllegalArgumentException("Queens cannot occupy the same position.");

        deltaX = Math.abs(queen1.x - queen2.x);
        deltaY = Math.abs(queen1.y - queen2.y);
    }

    public boolean canQueensAttackOneAnother() {
        return deltaX == 0 || deltaY == 0 || deltaX == deltaY;
    }
}
