let s:COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']

function! Value(colors) abort
  let [l:color1, l:color2; l:rest] = a:colors
  let l:tens = index(s:COLORS, l:color1)
  let l:ones = index(s:COLORS, l:color2)
  return 10 * l:tens + l:ones
endfunction
