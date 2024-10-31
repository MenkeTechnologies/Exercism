function! Sum(factors, limit) abort
  let l:sum = 0
  for l:i in range(1, a:limit - 1)
    for l:factor in a:factors
      if l:i % l:factor == 0 && l:factor != 0
        let l:sum += l:i
        break
      endif
    endfor
  endfor
  return l:sum
endfunction
