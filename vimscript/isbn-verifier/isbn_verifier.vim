function! IsValid(isbn) abort
  let l:digits = substitute(a:isbn, '-', '', 'g')
  if len(l:digits) != 10
    return 0
  endif

  let [sum, i] = [0, 0]
  for c in reverse(split(l:digits, '\zs'))
    if c ==# 'X' && i == 0
      let sum += 10
    elseif c =~? '\d'
      let sum += (i + 1) * str2nr(c)
    else
      return 0
    endif
    let i += 1
  endfor
  return sum % 11 == 0
endfunction
