module matching_brackets;

import std.array : array, back, empty, popBack;
import std.string : indexOf;

static immutable string open = "[{(";
static immutable string close = "]})";

pure bool isPaired(immutable string input)
{
    dchar[] stk;
    foreach (immutable c; input.array) {
        if (open.indexOf(c) != -1) {
            stk ~= c;
        }
        else if (close.indexOf(c) != -1) {
            if (stk.empty || open[close.indexOf(c)] != stk.back) {
                return false;
            }
            stk.popBack();
        }
    }
    return stk.empty;
}

unittest
{
    immutable int allTestsEnabled = 0;

    // Paired square brackets
    assert(isPaired("[]"));

    static if (allTestsEnabled)
    {
        // Empty string
        assert(isPaired(""));

        // Unpaired brackets
        assert(!isPaired("[["));

        // Wrong ordered brackets
        assert(!isPaired("}{"));

        // Wrong closing bracket
        assert(!isPaired("{]"));

        // Paired with whitespace
        assert(isPaired("{ }"));

        // Partially paired brackets
        assert(!isPaired("{[])"));

        // Simple nested brackets
        assert(isPaired("{[]}"));

        // Several paired brackets
        assert(isPaired("{}[]"));

        // Paired and nested brackets
        assert(isPaired("([{}({}[])])"));

        // Unopened closing brackets
        assert(!isPaired("{[)][]}"));

        // Unpaired and nested brackets
        assert(!isPaired("([{])"));

        // Paired and wrong nested brackets
        assert(!isPaired("[({]})"));

        // Paired and incomplete brackets
        assert(!isPaired("{}["));

        // Too many closing brackets
        assert(!isPaired("[]]"));

        // Math expression
        assert(isPaired("(((185 + 223.85) * 15) - 543)/2"));

        // Complex latex expression
        assert(isPaired(
                "\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)"));
    }
}
