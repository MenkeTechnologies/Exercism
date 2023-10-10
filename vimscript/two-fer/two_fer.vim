function! TwoFer(name) abort
  return 'One for ' . (empty(a:name) ? 'you' : a:name) . ', one for me.'
endfunction
