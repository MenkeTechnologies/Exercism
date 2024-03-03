module.exports = class BinarySearch
  constructor: (@values) ->
  find: (target) ->
    lo = 0
    hi = @values.length - 1
    while lo <= hi
        mid = (lo + hi) // 2
        curr = @values[mid]
        if target == curr
            return mid
        else if target <= curr
            hi = mid - 1
        else if target >= curr
            lo = mid + 1
    throw new Error 'value not in array'
