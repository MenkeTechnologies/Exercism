using System;

public static class Leap
{
    public static bool IsLeapYear(int y) => 
        y % 4 == 0 && y % 100 != 0 || y % 400 == 0;
}
