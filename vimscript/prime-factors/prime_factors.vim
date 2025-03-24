function! Factors(value) abort
  let dup = a:value
  let factors = []
  let divisor = 2
  while dup > 1
    while dup % divisor == 0
      call add(factors, divisor)
      let dup /= divisor
    endwhile
    let divisor += 1
  endwhile

  return factors
endfunction
