"
" This function takes two strings which represent strands and returns
" their Hamming distance.
"
" If the lengths of the strands don't match, throw this exception:
"
"     'left and right strands must be of equal length'
"
function! Distance(s1, s2)

    if strlen(a:s1) != strlen(a:s2)
        throw 'left and right strands must be of equal length'
    endif

    return len(filter(range(strlen(a:s1)), {i -> a:s1[i] != a:s2[i]}))
endfunction
