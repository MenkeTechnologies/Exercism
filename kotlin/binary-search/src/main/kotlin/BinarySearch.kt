object BinarySearch {
    fun search(list: List<Int>, item: Int): Int {
        var lo = 0
        var hi = list.size - 1
        while (lo <= hi) {
            val mid = (lo + hi) / 2
            if (list[mid] == item) {
                return mid
            } else if (list[mid] < item) {
                lo = mid + 1
            } else {
                hi = mid - 1
            }
        }
        throw NoSuchElementException()
    }
}
