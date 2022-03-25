using System;
using System.Linq;

public static class RnaTranscription
{
    public static string ToRna(string nucleotide) =>
        new(nucleotide.Select(c => c switch
        {
            'G' => 'C',
            'C' => 'G',
            'T' => 'A',
            'A' => 'U',
            _ => throw new ArgumentException()
        }).ToArray());
}
