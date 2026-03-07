steps = (n) ->
  error 'Only positive integers are allowed' unless n > 0
  cnt = 0
  while n > 1
    if n % 2 == 0 then n /= 2 else n = 3 * n + 1
    cnt += 1
  cnt
  
{ :steps }