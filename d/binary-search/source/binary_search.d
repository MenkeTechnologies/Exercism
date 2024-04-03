module binary_search;

class BinarySearch {
    private immutable int[] values;

    this(immutable int[] values) {
        this.values = values;
    }

    final int find(immutable int value) {
        if (values.length == 0) throw new Exception("The list is empty!");
        int lo = 0;
        int hi = cast(int)values.length - 1;
        while (lo <= hi) {
            int mid = (lo + hi) / 2;
            if (values[mid] == value) {
                return mid;
            } else if (values[mid] > value) {
                hi = mid - 1;
            } else {
                lo = mid + 1;
            }
        }
        throw new Exception("Value not found in the array");
    }
}

unittest
{
    const int allTestsEnabled = 1;

    // Finds a target in an array with one element
    {
        BinarySearch bs = new BinarySearch([6]);
        assert(bs.find(6) == 0);
    }

    static if (allTestsEnabled)
    {

        import std.exception : assertThrown;

        // Finds a target in the middle of an array
        {
            BinarySearch bs = new BinarySearch([1, 3, 4, 6, 8, 9, 11]);
            assert(bs.find(6) == 3);
        }

        // Finds a target at the beginning of an array
        {
            BinarySearch bs = new BinarySearch([1, 3, 4, 6, 8, 9, 11]);
            assert(bs.find(1) == 0);
        }

        // Finds a target at the end of an array
        {
            BinarySearch bs = new BinarySearch([1, 3, 4, 6, 8, 9, 11]);
            assert(bs.find(11) == 6);
        }

        // Finds a target in an array of odd length
        {
            BinarySearch bs = new BinarySearch([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634]);
            assert(bs.find(144) == 9);
        }

        // Finds a target in an array of even length
        {
            BinarySearch bs = new BinarySearch([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377]);
            assert(bs.find(21) == 5);
        }

        // Identifies that a target is not included in the array
        {
            BinarySearch bs = new BinarySearch([1, 3, 4, 6, 8, 9, 11]);
            assertThrown(bs.find(7));
        }

        // A target smaller than the array's smallest target is not found
        {
            BinarySearch bs = new BinarySearch([1, 3, 4, 6, 8, 9, 11]);
            assertThrown(bs.find(0));
        }

        // A target larger than the array's largest target is not found
        {
            BinarySearch bs = new BinarySearch([1, 3, 4, 6, 8, 9, 11]);
            assertThrown(bs.find(13));
        }

        // Nothing is found in an empty array
        {
            BinarySearch bs = new BinarySearch([]);
            assertThrown(bs.find(1));
        }

        // Nothing is found when the left and right bounds cross
        {
            BinarySearch bs = new BinarySearch([1, 2]);
            assertThrown(bs.find(0));
        }

    }
}
