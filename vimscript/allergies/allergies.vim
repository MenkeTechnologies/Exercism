let s:items = [
    \ ['eggs', 1],
    \ ['peanuts', 2],
    \ ['shellfish', 4],
    \ ['strawberries', 8],
    \ ['tomatoes', 16],
    \ ['chocolate', 32],
    \ ['pollen', 64],
    \ ['cats', 128],
    \ ]

function! AllergicTo(score, allergy) abort
    return index(List(a:score), a:allergy) > -1
endfunction

function! List(score) abort
  let r = []
  for [allergen, factor] in s:items
      if and(a:score, factor)
          let r += [allergen]
      endif
  endfor
  return r
endfunction
