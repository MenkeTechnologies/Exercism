let s:numerals = [
      \ [ "M",  1000 ],
      \ [ "CM", 900 ],
      \ [ "D",  500 ],
      \ [ "CD", 400 ],
      \ [ "C",  100 ],
      \ [ "XC", 90 ],
      \ [ "L",  50 ],
      \ [ "XL", 40 ],
      \ [ "X",  10 ],
      \ [ "IX", 9 ],
      \ [ "V",  5 ],
      \ [ "IV", 4 ],
      \ [ "I",  1 ],
      \ ]

function! ToRoman(n) abort
  let dup = a:n
  let r = ''
  for [ roman, value ] in s:numerals
    let r .= repeat(roman, dup / value)
    let dup %= value
  endfor
  return r
endfunction
