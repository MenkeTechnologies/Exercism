using System.Collections.Generic;
using System.Linq;

public static class ProteinTranslation
{
    private static readonly Dictionary<string, string> Dict = new()
    {
        { "AUG", "Methionine" },
        { "UUC", "Phenylalanine" },
        { "UUU", "Phenylalanine" },
        { "UUA", "Leucine" },
        { "UUG", "Leucine" },
        { "UCG", "Serine" },
        { "UCA", "Serine" },
        { "UCC", "Serine" },
        { "UCU", "Serine" },
        { "UAU", "Tyrosine" },
        { "UAC", "Tyrosine" },
        { "UGU", "Cysteine" },
        { "UGC", "Cysteine" },
        { "UGG", "Tryptophan" },
        { "UGA", "STOP" },
        { "UAG", "STOP" },
        { "UAA", "STOP" }
    };

    public static string[] Proteins(string strand) =>
        strand.Chunk(3).Select(codon => Dict[new string(codon)])
            .TakeWhile(protein => !protein.Equals("STOP"))
            .ToArray();
}
