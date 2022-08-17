class BinarySearch {
    List data
    
    BinarySearch(List data) {
        this.data = data
    }
    int indexOf(item) {
        def (low, hi) = [0, data.size - 1]
        def mid
        while (low <= hi) {
            mid = (low + hi).intdiv(2)
            if (data[mid] < item) {
                low = mid + 1
            } else if (data[mid] > item){
                hi = mid - 1
            } else {
                return mid
            }
        }
        return -1
    }
}
