module resistor_color;

import std.algorithm.searching : countUntil;
class ResistorColor
{
    static immutable colors = [
        "black", "brown", "red", "orange", "yellow", "green", "blue", "violet",
        "grey", "white"
    ];
    static pure long colorCode(immutable string color)
    {
        return colors.countUntil(color);
    }
}

unittest
{
    immutable int allTestsEnabled = 0;

    // Black
    assert(ResistorColor.colorCode("black") == 0);

    static if (allTestsEnabled)
    {
        // White
        assert(ResistorColor.colorCode("white") == 9);

        // Orange
        assert(ResistorColor.colorCode("orange") == 3);

        // Colors
        assert(ResistorColor.colors == [
                "black", "brown", "red", "orange", "yellow", "green", "blue",
                "violet", "grey", "white"
                ]);
    }

}
