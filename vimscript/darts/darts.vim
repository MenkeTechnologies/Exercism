function! Darts(x, y) abort
  let dist = sqrt(pow(a:x, 2) + pow(a:y, 2))
  return dist > 10 ? 0 : dist > 5 ? 1 : dist > 1 ? 5 : 10
endfunction
