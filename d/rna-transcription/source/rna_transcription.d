module rna_transcription;

import std.string : tr;

string toRna(string dna) {
    return dna.tr("CGTA", "GCAU");
}

unittest
{
    import std.exception : assertThrown;

    immutable int allTestsEnabled = 0;

    // Empty RNA sequence
    assert(toRna("") == "");

    static if (allTestsEnabled)
    {
        // RNA complement of cytosine is guanine
        assert(toRna("C") == "G");

        // RNA complement of guanine is cytosine
        assert(toRna("G") == "C");

        // RNA complement of thymine is adenine
        assert(toRna("T") == "A");

        // RNA complement of adenine is uracil
        assert(toRna("A") == "U");

        // RNA complement
        assert(toRna("ACGTGGTCTTAA") == "UGCACCAGAAUU");
    }

}
