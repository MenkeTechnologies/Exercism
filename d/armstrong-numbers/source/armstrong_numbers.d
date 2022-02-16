module armstrong_numbers;

import std.conv;
import std.math;
import std.algorithm;
import std.stdio;

bool isArmstrongNumber(int n) {
    auto str = to!string(n);
    return n == str.map!((a) { return pow(to!int(a) - '0', str.length); })
    .sum();
}

unittest
{
    immutable int allTestsEnabled = 0;

    // Zero is an Armstrong number
    assert(isArmstrongNumber(0));

    static if (allTestsEnabled)
    {
        // Single digit numbers are Armstrong numbers
        assert(isArmstrongNumber(5));

        // There are no 2 digit Armstrong numbers
        assert(!isArmstrongNumber(10));

        // Three digit number that is an Armstrong number
        assert(isArmstrongNumber(153));

        // Three digit number that is not an Armstrong number
        assert(!isArmstrongNumber(100));

        // Four digit number that is an Armstrong number
        assert(isArmstrongNumber(9474));

        // Four digit number that is not an Armstrong number
        assert(!isArmstrongNumber(9475));

        // Seven digit number that is an Armstrong number
        assert(isArmstrongNumber(9926315));

        // Seven digit number that is not an Armstrong number
        assert(!isArmstrongNumber(9926314));
    }
}
