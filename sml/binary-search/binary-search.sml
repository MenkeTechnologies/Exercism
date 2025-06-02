fun find (haystack: int array, needle: int): int =
  let fun aux lo hi =
        if lo > hi then raise Fail "value not in array"
        else let val mid  = (lo + hi) div 2
                 val midElem = Array.sub (haystack, mid)
             in if needle < midElem then aux lo (mid - 1)
                 else if needle > midElem then aux (mid + 1) hi
                 else mid
             end
  in aux 0 (Array.length haystack - 1) end
