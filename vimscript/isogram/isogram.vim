function! IsIsogram(s) abort
    return a:s !~? '\(\w\).*\1'
endfunction
