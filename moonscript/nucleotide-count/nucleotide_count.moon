return (s) ->
  acc = A: 0, C: 0, G: 0, T: 0
  
  for c in s\gmatch(".")
    assert acc[c], 'Invalid nucleotide in strand'
    acc[c] += 1
  acc