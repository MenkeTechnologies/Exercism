function! WordCount(s) abort
    let h = {}
    for w in split(tolower(a:s), "\\v(\\s'|('\\s|$)|[^'[:alnum:]]+)")
        if !has_key(h, w)
            let h[w] = 1
        else
            let h[w] += 1
        endif

    endfor

    return h

endfunction
