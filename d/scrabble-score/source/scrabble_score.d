module scrabble_scores;
import std.algorithm: map, sum;
import std.conv: to;
import std.uni: toLower;
immutable int[char] letterScores;
static this() {
    letterScores = [
        'a': 1, 'e': 1, 'i': 1, 'o': 1, 'u': 1, 'l': 1, 'n': 1, 'r': 1, 's': 1, 't': 1,
        'd': 2, 'g': 2,
        'b': 3, 'c': 3, 'm': 3, 'p': 3,
        'f': 4, 'h': 4, 'v': 4, 'w': 4, 'y': 4,
        'k': 5,
        'j': 8, 'x': 8,
        'q': 10, 'z': 10
    ];
}
pure int score(immutable string word) {
    return toLower(word).map!(s => letterScores.get(cast(char)s, 0)).sum();
}
unittest
{
    immutable int allTestsEnabled = 1;
    // Lowercase letter
    assert(score("a") == 1);
    static if (allTestsEnabled)
    {
        // Uppercase letter
        assert(score("A") == 1);
        // Valuable letter
        assert(score("f") == 4);
        
        // Short word
        assert(score("at") == 2);
        
        // Short, valuable word
        assert(score("zoo") == 12);
        
        // Medium word
        assert(score("street") == 6);
        
        // Medium, valuable word
        assert(score("quirky") == 22);
        
        // Long, mixed-case word
        assert(score("OxyphenButazone") == 41);
        
        // English-like word
        assert(score("pinata") == 8);
        
        // Empty input
        assert(score("") == 0);
        
        // Entire alphabet available
        assert(score("abcdefghijklmnopqrstuvwxyz") == 87);
    }
}
