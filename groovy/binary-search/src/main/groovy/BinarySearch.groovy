class BinarySearch {
    List data

    BinarySearch(List data) {
        this.data = data
    }
    int indexOf(item) {
        def (lo, hi) = [0, data.size - 1]
        def mid
        while (lo <= hi) {
            mid = (lo + hi).intdiv(2)
            if (data[mid] < item) {
                lo = mid + 1
            } else if (data[mid] > item){
                hi = mid - 1
            } else {
                return mid
            }
        }
        return -1
    }
}
