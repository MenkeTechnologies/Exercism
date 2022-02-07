"
" This function takes a year and returns 1 if it's a leap year
" and 0 otherwise.
"
function! LeapYear(y) abort
    return a:y % 4 == 0 && a:y % 100 != 0 || a:y % 400 == 0
endfunction
