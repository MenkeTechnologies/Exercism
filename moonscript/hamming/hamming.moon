distance = (s1, s2) ->
  assert #s1 == #s2, 'strands must be of equal length'
  cnt = 0
  for i = 1, #s1
    if s1\sub(i, i) != s2\sub(i, i)
      cnt += 1
  cnt
    
{ :distance }
