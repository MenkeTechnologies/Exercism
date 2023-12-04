function! Keep(list, predicate) abort
  let lst = []
  for c in a:list
      if a:predicate(c)
          let lst += [c]
      endif
  endfor
  return lst
endfunction

function! Discard(list, predicate) abort
    return Keep(a:list, {x -> !a:predicate(x)} )
endfunction
