let s:dict = {
\   'AUG': 'Methionine',
\   'UUU': 'Phenylalanine',
\   'UUC': 'Phenylalanine',
\   'UUA': 'Leucine',
\   'UUG': 'Leucine',
\   'UCU': 'Serine',
\   'UCC': 'Serine',
\   'UCA': 'Serine',
\   'UCG': 'Serine',
\   'UAU': 'Tyrosine',
\   'UAC': 'Tyrosine',
\   'UGU': 'Cysteine',
\   'UGC': 'Cysteine',
\   'UGG': 'Tryptophan',
\   'UAA': 'STOP',
\   'UAG': 'STOP',
\   'UGA': 'STOP'
\ }

function! Proteins(strand) abort
  let res = []
  for i in range(0, len(a:strand) - 1, 3)
    let s = strpart(a:strand, i, 3)
    if !has_key(s:dict, s)
        throw 'Invalid codon'
    endif
    let protein = get(s:dict, s)

    if protein ==# 'STOP'
        break
    endif
    let res = add(res, protein)
  endfor
  return res
endfunction
