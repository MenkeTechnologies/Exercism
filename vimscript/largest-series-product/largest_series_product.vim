
function LargestProduct(digits, span) abort
  if a:digits =~# '\D'
    throw 'invalid input'
  endif
  if a:span < 0 || len(a:digits) < a:span
    return -1
  endif
  if a:span == 0
    return 1
  endif
  let digit_array = split(a:digits, '\zs')
  let indexes = range(len(digit_array) - a:span + 1)
  return max(map(indexes, 's:product(digit_array[v:val : v:val + a:span - 1])' ))
endfunction

function s:product(array) abort
  let mul = 1
  for num in a:array
    let mul *= num
  endfor
  return mul
endfunction
