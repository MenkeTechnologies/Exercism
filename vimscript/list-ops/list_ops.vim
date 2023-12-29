function! Append(lst1, lst2) abort
  if len(a:lst1) == 0
    return a:lst2
  endif
  return [ a:lst1[0] ] + Append(a:lst1[1:], a:lst2)
endfunction

function! Concat(lsts) abort
  return Foldl(a:lsts, funcref('Append'), [])
endfunction

function! Filter(lst, f) abort
  let res = []
  for item in a:lst
    if a:f(item) == 1
      call add(res, item)
    endif
  endfor
  return res
endfunction

function! Length(lst) abort
  return Foldl(a:lst, {acc, _ -> acc + 1}, 0)
endfunction

function! Map(lst, f) abort
  let res = []
  for item in a:lst
    call add(res, a:f(item))
  endfor
  return res
endfunction

function! Foldl(lst, f, init) abort
  let length = len(a:lst)
  if length == 0
    return a:init
  endif
  let res = a:init
  for i in range(l:length)
    let res = a:f(res, a:lst[i])
  endfor
  return res
endfunction

function! Foldr(lst, f, init) abort
  let length=  len(a:lst)
  if length == 0
    return a:init
  endif
  let res = a:init
  for i in range(length - 1, 0, -1)
    let res = a:f(a:lst[i], res)
  endfor
  return res
endfunction

function! ReversalOf(lst) abort
  let res = []
  for i in range(len(a:lst) - 1, 0, -1)
    call add(res, a:lst[i])
  endfor
  return res
endfunction
