function! IsPangram(s) abort
    return len(filter(map(range(97,122), 'nr2char(v:val)'), 'a:s =~? v:val')) == 26
endfunction
