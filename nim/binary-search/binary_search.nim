proc binarySearch*(a: openArray[int], val: int): int =
  var (lo, hi, mid) = (0, a.len-1 ,0)
  while lo <= hi:
    mid = (lo+hi) div 2
    if a[mid] == val: return mid
    elif a[mid] < val: lo = mid+1
    else: hi = mid-1
  return -1

