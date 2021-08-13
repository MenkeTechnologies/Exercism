using System;

public static class CollatzConjecture
{
    public static int Steps(int number)
    {
        int cnt = 0;

        if (number <= 0)
        {
            throw new ArgumentOutOfRangeException(nameof(number));
        }


        while (number != 1)
        {

            if (number % 2 == 0)
            {
                number /= 2;
            }
            else
            {

                number = 3 * number + 1;

            }


            ++cnt;
        }


        return cnt;


    }
}
