import 'package:binary_search/value_not_found_exception.dart';

class BinarySearch {
  final List<int> arr;

  BinarySearch(this.arr);
  
  int find(int target) {
    int lo = 0;
    int hi = arr.length - 1;
    while (lo <= hi ) {
      int mid = (lo + hi) ~/ 2;
      if (arr[mid] == target) {
        return mid;
      } else if (arr[mid] < target) {
        lo = mid + 1;
      } else {
        hi = mid - 1;
      }
    }
    throw ValueNotFoundException('not found');
  }
}
