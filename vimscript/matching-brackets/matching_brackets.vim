let s:pairs = {'(': ')', '[': ']', '{': '}'}

function! IsPaired(s) abort
  let stk = []
  for c in split(a:s, '\zs')
    if has_key(s:pairs, c)
      call add(stk, c)
    elseif index(values(s:pairs), c) != -1
      if empty(stk) || s:pairs[remove(stk, -1)] !=# c
        return 0
      endif
    endif
  endfor
  return empty(stk)
endfunction