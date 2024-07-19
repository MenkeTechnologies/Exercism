def binarySearch(target; lo; hi):
  if lo > hi then "value not in array" | halt_error end
  | ((lo + hi) / 2 | floor) as $mid
  | if   target == .[$mid] then $mid
    elif target <  .[$mid] then binarySearch(target; lo; $mid - 1)
    else                        binarySearch(target; $mid + 1; hi)
    end
;
.value as $target | .array | binarySearch($target; 0; length - 1)
