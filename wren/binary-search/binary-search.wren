class BinarySearch {

  static find(values, target) {
    var lo = 0
    var hi = values.count - 1
    while (lo <= hi) {
      var mid = ((lo + hi) / 2).floor
      if (values[mid] == target) {
        return mid
      } else if (values[mid] > target) {
        hi = mid - 1
      } else {
        lo = mid + 1
      }
    }
    Fiber.abort("value not in list")
  }
}

