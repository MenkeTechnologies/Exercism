function! Nr2Bin(n)
  let dup = a:n
  let r = ""
  while dup
    let r .= '01'[dup % 2]
    let dup /= 2
  endwhile
  return r
endfunction
function! EggCount(n) abort
    return len(filter(split(Nr2Bin(a:n), '\zs'), 'v:val == "1"'))
endfunction
