public function find(int[] array, int value) returns int? {
    int lo = 0;
    int hi = array.length();
    while (lo < hi) {
        int mid = (lo + hi) / 2;
        int element = array[mid];
        if (value < element) {
            hi = mid;
        } else if (value > element) {
            lo = mid + 1;
        } else {
            return mid;
        }
    }
    return null;
}