  find = (lst, target) ->
    lo = 1
    hi = 1 + #lst
    while lo < hi
      mid = (lo + hi) // 2
      if lst[mid] < target
        lo = mid + 1
      else if lst[mid] > target
        hi = mid
      else
        return mid
    error 'value not in array'

{ :find }
