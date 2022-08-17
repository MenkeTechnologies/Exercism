object BinarySearch {
    fun search(list: List<Int>, item: Int): Int {
        var low = 0
        var high = list.size - 1
        while (low <= high) {
            val mid = (low + high) / 2
            if (list[mid] == item) {
                return mid
            } else if (list[mid] < item) {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        throw NoSuchElementException()
    }
}
