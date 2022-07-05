let s:alpha = 'abcdefghijklmnopqrstuvwxyz'
let s:rev = 'zyxwvutsrqponmlkjihgfedcba'

function! AtbashDecode(cipher) abort
    let phrase = substitute(tolower(a:cipher), '\W', '', 'g')
    return tr(phrase, s:rev, s:alpha)
endfunction

function! AtbashEncode(plaintext) abort
    let phrase = substitute(tolower(a:plaintext), '\W', '', 'g')
    let phrase = trim(substitute(phrase, '\(.\{5}\)', '\1 ', 'g'))
    return tr(phrase, s:alpha, s:rev)
endfunction
