function! IsArmstrongNumber(n) abort
  let s = string(a:n)
  let digits = len(s)
  let sum = 0
  for c in split(s, '\zs')
      let sum += pow(str2nr(c, 10), digits)
  endfor

  return sum == a:n

endfunction
