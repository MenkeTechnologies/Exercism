function! Slices(series, sliceLength) abort
    let length = len(a:series)
    call s:assert(length > 0, 'series cannot be empty')
    call s:assert(a:sliceLength <= length, 'slice length cannot be greater than series length')
    call s:assert(a:sliceLength != 0, 'slice length cannot be zero')
    call s:assert(a:sliceLength > 0, 'slice length cannot be negative')
    return map(range(length - a:sliceLength + 1), 'a:series[v:val:v:val + a:sliceLength - 1]')
endfunction

function s:assert(cond, msg)
    if !a:cond | throw a:msg | endif
endfunction
