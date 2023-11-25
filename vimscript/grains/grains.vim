function! Square(n) abort
    if a:n < 1 || a:n > 64
        throw 'square must be between 1 and 64'
    endif

    return float2nr(pow(2, a:n - 1))
endfunction

function! Total() abort
    return Square(64)
endfunction
