function! IsValid(s) abort
    let nows = substitute(a:s, '\s', '', 'g')
    let chars = reverse(split(nows, '\zs'))
    let sum = 0
    let cnt = 0
    for c in chars
        let int = char2nr(c) - char2nr('0')
        if int < 0 || int > 9
            return $false
        endif
        if cnt % 2 == 1
            let int *= 2
        endif
        if int > 9
            let int -= 9
        endif
        let sum += int
        let cnt += 1
    endfor

    return !(sum == 0 && len(chars) == 1) && sum % 10 == 0
endfunction
