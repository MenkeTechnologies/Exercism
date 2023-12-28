function! Flatten(lst) abort
  let l:res = []
  for l:elem in a:lst
    if type(l:elem) == v:t_list
      call extend(l:res, Flatten(l:elem))
    elseif l:elem isnot v:null
        call add(l:res, l:elem)
    endif
  endfor
  return res
endfunction
