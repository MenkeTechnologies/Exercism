"
" We are going to do the Transform step of an Extract-Transform-Load.
"
" Example:
"
"   :echo Transform({'1': ['a', 'b'], '2': ['c']})
"   {'a': 1, 'b': 1, 'c': 2}
"

function! Transform(scores) abort
    let r = {}
    for [score, letters] in items(a:scores)
        let score = str2nr(score)
        for c in letters
            let r[tolower(c)] = score
        endfor
    endfor
    return r
endfunction
