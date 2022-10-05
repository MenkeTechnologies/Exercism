module perfect_numbers;

import std.exception : enforce;
enum Classification
{
    DEFICIENT,
    PERFECT,
    ABUNDANT
}
pure Classification classify(immutable int input)
{
    enforce(input > 0, "Classification is only possible for natural numbers");
    int aliquot = 0;
    for (int i = 1; i < input; ++i) {
        if (input % i == 0) {
            aliquot += i;
        }
    }
    if (aliquot == input) {
        return Classification.PERFECT;
    }
    else if (aliquot > input) {
        return Classification.ABUNDANT;
    }

    return Classification.DEFICIENT;
}


unittest
{
    import std.exception : assertThrown;

    immutable int allTestsEnabled = 0;

    // Perfect numbers

    // Smallest perfect number is classified correctly
    assert(classify(6) == Classification.PERFECT);

    // Medium perfect number is classified correctly
    assert(classify(28) == Classification.PERFECT);

    // Large perfect number is classified correctly
    assert(classify(33_550_336) == Classification.PERFECT);

    static if (allTestsEnabled)
    {
        // Abundant numbers

        // Smallest abundant number is classified correctly
        assert(classify(12) == Classification.ABUNDANT);

        // Medium abundant number is classified correctly
        assert(classify(30) == Classification.ABUNDANT);

        // Large abundant number is classified correctly
        assert(classify(33_550_335) == Classification.ABUNDANT);

        // Deficient numbers

        // Smallest prime deficient number is classified correctly
        assert(classify(2) == Classification.DEFICIENT);

        // Smallest non-prime deficient number is classified correctly
        assert(classify(4) == Classification.DEFICIENT);

        // Medium deficient number is classified correctly
        assert(classify(32) == Classification.DEFICIENT);

        // Large deficient number is classified correctly
        assert(classify(33_550_337) == Classification.DEFICIENT);

        // Edge case (no factors other than itself) is classified correctly
        assert(classify(1) == Classification.DEFICIENT);

        // Invalid inputs

        // Zero is rejected (not a natural number)
        assertThrown(classify(0));

        // Negative integer is rejected (not a natural number)
        assertThrown(classify(-1));
    }

}
