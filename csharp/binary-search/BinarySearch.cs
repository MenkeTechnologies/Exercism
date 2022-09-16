public static class BinarySearch
{
    public static int Find(int[] input, int target)
    {
        int lo = 0;
        int hi = input.Length - 1;
        while (lo <= hi)
        {
            int mid = (lo + hi) / 2;
            if (target > input[mid])
                lo = mid + 1;
            else if (target < input[mid])
                hi = mid - 1;
            else
                return mid;
        }

        return -1;
    }
}
