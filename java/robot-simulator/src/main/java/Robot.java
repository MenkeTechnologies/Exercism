public class Robot {
    private static GridPosition gridPosition;
    private static Orientation orientation;

    public Robot(GridPosition initialGridPosition, Orientation initialOrientation) {
        gridPosition = initialGridPosition;
        orientation = initialOrientation;
    }

    public GridPosition getGridPosition() {
        return gridPosition;
    }

    public Orientation getOrientation() {
        return orientation;
    }

    public void turnRight() {
        orientation = Orientation.values()[(orientation.ordinal() + 1) % 4];
    }

    public void turnLeft() {
        orientation = Orientation.values()[orientation.ordinal() == 0 ? 3 : orientation.ordinal() - 1];
    }

    public void advance() {
        switch (orientation) {
            case NORTH:
                gridPosition = new GridPosition(gridPosition.x, gridPosition.y + 1);
                break;
            case EAST:
                gridPosition = new GridPosition(gridPosition.x + 1, gridPosition.y);
                break;
            case SOUTH:
                gridPosition = new GridPosition(gridPosition.x, gridPosition.y - 1);
                break;
            case WEST:
                gridPosition = new GridPosition(gridPosition.x - 1, gridPosition.y);
                break;
        }
    }

    public void simulate(String actions) {
        for (char c : actions.toCharArray()) {
            switch (c) {
                case 'R':
                    turnRight();
                    break;
                case 'L':
                    turnLeft();
                    break;
                case 'A':
                    advance();
                    break;
            }
        }
    }
}
