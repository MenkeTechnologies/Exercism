public enum Direction
{
    North,
    East,
    South,
    West
}

public class RobotSimulator
{
    public RobotSimulator(Direction direction, int x, int y)
    {
        Direction = direction;
        X = x;
        Y = y;
    }

    public Direction Direction { get; private set; }
    public int X { get; private set; }
    public int Y { get; private set; }

    public void Move(string instructions)
    {
        foreach (char c in instructions)
        {
            switch (c)
            {
                case 'R':
                    Direction = (int)Direction != 3 ? (Direction)((int)Direction + 1) : 0;
                    break;
                case 'L':
                    Direction = (int)Direction != 0 ? (Direction)((int)Direction - 1) : (Direction)3;
                    break;
                case 'A' when (int)Direction % 2 == 0:
                    Y -= ((int)Direction - 1);
                    break;
                case 'A' when (int)Direction % 2 == 1:
                    X -= ((int)Direction - 2);
                    break;
            }
        }
    }
}
