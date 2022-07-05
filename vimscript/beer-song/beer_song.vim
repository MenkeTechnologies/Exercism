function! Bottles(verse) abort
  if a:verse > 1
    return printf('%s bottles', a:verse)
  elseif a:verse == 1
    return '1 bottle'
  else
    return 'no more bottles'
  endif
endfunction

function! Verse(verse) abort
  if a:verse == 0
    let r = ["No more bottles of beer on the wall, no more bottles of beer.\n",
          \    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"]
    return join(r, '')
  endif
  let next_verse = a:verse - 1
  let r = [ printf("%s of beer on the wall, %s of beer.\n",
            \   Bottles(a:verse), Bottles(a:verse)),
            \ printf("Take %s down and pass it around, %s of beer on the wall.\n", 
            \   a:verse == 1 ? 'it' : 'one', Bottles(next_verse)) ]
  return join(r, '')
endfunction

function! Verses(start, end) abort
  let r = []
  for i in range(a:start, a:end, -1)
    call add(r, Verse(i))
  endfor
  return join(r, "\n")
endfunction

