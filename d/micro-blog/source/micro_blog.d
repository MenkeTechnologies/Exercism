module micro_blog;

import std.uni: byGrapheme;
import std.array: array, join;
import std.algorithm: map;
import std.conv: to;
import std.range: take;

pure string truncate(immutable string s) => s.byGrapheme.take(5).map!(g => g.array.to!string).join;


unittest
{
    immutable int allTestsEnabled = 0;

    // English language short
    assert(truncate("Hi") == "Hi");

    static if (allTestsEnabled)
    {
        // English language long
        assert(truncate("Hello there") == "Hello");

        // German language short (broth)
        assert(truncate("brühe") == "brühe");

        // German language long (bear carpet → beards)
        assert(truncate("Bärteppich") == "Bärte");

        // Bulgarian language short (good)
        assert(truncate("Добър") == "Добър");

        // Greek language short (health)
        assert(truncate("υγειά") == "υγειά");

        // Maths short
        assert(truncate("a=πr²") == "a=πr²");

        // Maths long
        assert(truncate("∅⊊ℕ⊊ℤ⊊ℚ⊊ℝ⊊ℂ") == "∅⊊ℕ⊊ℤ");

        // English and emoji short
        assert(truncate("Fly 🛫") == "Fly 🛫");

        // Emoji short
        assert(truncate("💇") == "💇");

        // Emoji long
        assert(truncate("❄🌡🤧🤒🏥🕰😀") == "❄🌡🤧🤒🏥");

        // Royal Flush?
        assert(truncate("🃎🂸🃅🃋🃍🃁🃊") == "🃎🂸🃅🃋🃍");
    }
}
