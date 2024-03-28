module eliuds_eggs;

pure int eggCount(immutable int inputNumber) {
    int cnt = 0;
    int dup = inputNumber;
    while (dup > 0) {
        cnt += dup & 1;
        dup >>= 1;
    }
    return cnt;
}

unittest
{
    immutable int allTestsEnabled = 0;

    // 0 eggs
    assert(eggCount(0) == 0);

    static if (allTestsEnabled)
    {
        // 1 egg
        assert(eggCount(16) == 1);

        // 4 eggs
        assert(eggCount(89) == 4);

        // 13 eggs
        assert(eggCount(2_000_000_000) == 13);
    }

}
