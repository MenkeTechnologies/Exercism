function! Bottles(verse) abort
  if (a:verse > 1)
    return printf("%s bottles", a:verse)
  elseif (a:verse == 1)
    return "1 bottle"
  else
    return "no more bottles"
  endif
endfunction
function! Verse(verse) abort
  if (a:verse == 0)
    let ret = ["No more bottles of beer on the wall, no more bottles of beer.\n",
          \    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"]
    return join(ret, "")
  endif
  let next_verse = a:verse - 1
  let ret = [ printf("%s of beer on the wall, %s of beer.\n", 
            \   Bottles(a:verse), Bottles(a:verse)),
            \ printf("Take %s down and pass it around, %s of beer on the wall.\n", 
            \   a:verse == 1 ? "it" : "one", Bottles(next_verse)) ]
  return join(ret, "")
endfunction
function! Verses(start, end) abort
  let ret = []
  for i in range(a:start, a:end, -1)
    call add(ret, Verse(i))
  endfor
  return join(ret, "\n")
endfunction

