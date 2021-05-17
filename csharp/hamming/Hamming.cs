using System;

public static class Hamming
{
    public static int Distance(string firstStrand, string secondStrand)
    {


        if (firstStrand.Length != secondStrand.Length)
        {
            throw new ArgumentException("bad args");
        }
        int d = 0;

        for (int i = 0; i < firstStrand.Length; i++)
        {
            var c = firstStrand[i];
            var c2 = secondStrand[i];

            if (c != c2)
            {
                ++d;
            }
        }

        return d;
    }
}