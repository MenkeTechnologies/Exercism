function! s:shift(shiftKey, c)
    if a:c =~ '\a'
        let offset = char2nr(a:c =~ '\u' ? 'A' : 'a')
        return nr2char((char2nr(a:c) - offset + a:shiftKey) % 26 + offset)
    endif
    return a:c
endfunction

function! Rotate(shiftKey, s) abort
  return join(map(split(a:s, '\zs'), 's:shift(a:shiftKey, v:val)'), '')
endfunction
