"
" Given a DNA string, compute how many times each nucleotide occurs in the
" string.
"
" Examples:
function! NucleotideCounts(s) abort
  let map = {'A': 0, 'C': 0, 'T': 0, 'G': 0}

  for nt in split(toupper(a:s), '\zs')
      if has_key(map, nt)
          let map[nt] += 1
      else
          throw 'Invalid nucleotide in strand'
      endif

  endfor

  return map

endfunction
