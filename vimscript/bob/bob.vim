"
" This function takes any remark and returns Bob's response.
"
function! Response(remark) abort

  let nows = substitute(a:remark, '[\t\n\r ]', "", "g")
  let y = nows !~# '\l' && nows =~? '\a'
  let q = nows =~ '?$'

  if empty(nows)
    return 'Fine. Be that way!'
  endif

  if y
    return q ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!'
  endif

  return q ? 'Sure.' : 'Whatever.'

endfunction
