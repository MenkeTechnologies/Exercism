function! Abbreviate(phrase) abort
  let words = split(substitute(toupper(a:phrase), '[^A-Z -]', '', 'g'), '[ -]')
  return join(map(words, 'strpart(v:val, 0, 1)'), '')
endfunction
