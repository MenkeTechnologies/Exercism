function! FindAnagrams(candidates, word) abort
    let sorted = s:sorted(a:word)
    let r = []
    for cand in a:candidates
        if cand !=? a:word && s:sorted(cand) ==# sorted
            let r += [cand]
        endif
    endfor
    return r
endfunction

function! s:sorted(word) abort
	return sort(split(tolower(a:word), '\zs'))
endfunction
