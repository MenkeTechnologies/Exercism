module isogram;

import std.algorithm;
import std.ascii;
import std.string;
import std.array;

bool isIsogram(immutable string str){
    return !str.toLower.filter!(isAlpha).array.sort.group
    .assocArray.byPair.map!(p => p[1]).any!(v => v > 1);
}

unittest
{
    immutable int allTestsEnabled = 1;

    // Empty string
    assert(isIsogram(""));

    static if (allTestsEnabled)
    {
        // Isogram with only lower case characters
        assert(isIsogram("isogram"));

        // Word with one duplicated character
        assert(!isIsogram("eleven"));

        // Word with one duplicated character from the end of the alphabet
        assert(!isIsogram("zzyzx"));

        // Longest reported english isogram
        assert(isIsogram("subdermatoglyphic"));

        // Word with duplicated character in mixed case
        assert(!isIsogram("Alphabet"));

        // Word with duplicated character in mixed case, lowercase first
        assert(!isIsogram("alphAbet"));

        // Hypothetical isogrammic word with hyphen
        assert(isIsogram("thumbscrew-japingly"));

        // Hypothetical word with duplicated character following hyphen
        assert(!isIsogram("thumbscrew-jappingly"));

        // Isogram with duplicated hyphen
        assert(isIsogram("six-year-old"));

        // Made-up name that is an isogram
        assert(isIsogram("Emily Jung Schwartzkopf"));

        // Duplicated character in the middle
        assert(!isIsogram("accentor"));

        // Same first and last characters
        assert(!isIsogram("angola"));
    }
}
