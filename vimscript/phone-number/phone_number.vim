let s:phone_regex = '\v^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.[:space:]]*([2-9]\d{2})[-.[:space:]]*(\d{4})\s*$'

function! ToNANP(number) abort
     return match(a:number, s:phone_regex) > -1
        \ ? substitute(a:number, s:phone_regex, '\2\3\4', '')
        \ : ''
endfunction
