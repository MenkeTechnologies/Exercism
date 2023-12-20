
function! Sublist(list1, list2) abort
    let s1 = join(a:list1, ',') . ','
    let s2 = join(a:list2, ',') . ','

    return s1 == s2 ? 'equal' : stridx(s2, s1) > -1 ? 'sublist' : stridx(s1, s2) > -1 ? 'superlist' : 'unequal'

endfunction
