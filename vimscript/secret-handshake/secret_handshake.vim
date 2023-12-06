let g:codes = { 1: 'wink', 2: 'double blink', 4: 'close your eyes', 8: 'jump' }

function! Commands(binary) abort
    let res = []
    let n = str2nr(a:binary, 2)

    for [k, v] in items(g:codes)
        if and(n, k) > 0
            let res += [v]
        endif

    endfor

    if and(n, 16) > 0
        let res = reverse(res)
    endif

    return res

endfunction
