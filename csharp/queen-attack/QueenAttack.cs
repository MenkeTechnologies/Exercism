using System;

public class Queen
{
    public Queen(int row, int column)
    {
        Row = row;
        Column = column;
    }

    public int Row { get; }
    public int Column { get; }
}

public static class QueenAttack
{
    public static bool CanAttack(Queen white, Queen black)
    {
        var dx = Math.Abs(white.Column - black.Column);
        var dy = Math.Abs(white.Row - black.Row);

        return dx == 0 || dy == 0 || dx == dy;
    }

    public static Queen Create(int row, int column)
    {
        if (row is < 0 or > 7 || column is < 0 or > 7)
        {
            throw new ArgumentOutOfRangeException();
        }

        return new Queen(row, column);
    }
}
