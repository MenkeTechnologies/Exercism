function! LeapYear(y) abort
    return a:y % 4 == 0 && a:y % 100 != 0 || a:y % 400 == 0
endfunction
