module resistor_color_duo;

import std.algorithm.searching : countUntil;
import std.algorithm.iteration;
import std.conv;

class ResistorColorDuo
{
    private static immutable colors = [
        "black", "brown", "red", "orange", "yellow", "green", "blue", "violet",
        "grey", "white"
    ];
    static pure long value(immutable string[] colorsInput)
    {
        return 10 * colors.countUntil(colorsInput[0]) + colors.countUntil(colorsInput[1]);
    }
}

unittest
{
    immutable int allTestsEnabled = 0;

    // Brown and black
    assert(ResistorColorDuo.value(["brown", "black"]) == 10);

    static if (allTestsEnabled)
    {
        // Blue and grey
        assert(ResistorColorDuo.value(["blue", "grey"]) == 68);

        // Yellow and violet
        assert(ResistorColorDuo.value(["yellow", "violet"]) == 47);

        // Orange and orange
        assert(ResistorColorDuo.value(["orange", "orange"]) == 33);

        // Ignore additional colors
        assert(ResistorColorDuo.value(["green", "brown", "orange"]) == 51);
    }

}
