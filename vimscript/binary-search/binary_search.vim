function! Find(list, value) abort
  let lo = 0
  let hi = len(a:list) - 1
  while lo <= hi
      let mid = (lo + hi) / 2
      if a:value == a:list[mid]
          return mid
      elseif a:value > a:list[mid]
          let lo = mid + 1
      else
          let hi = mid - 1
      endif
  endwhile

  throw 'value not in list'

endfunction
