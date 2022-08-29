return function(n)
  assert(n > 0, "Error: n must be greater than 0")
  local primes = {2}
  local cur = 3
  while #primes < n do
    local isprime = true
    local max = math.sqrt(cur)
    for _, v in ipairs(primes) do
      if cur % v == 0 then
        isprime = false
        break
      elseif v > max then
        break
      end
    end
    if isprime then
      table.insert(primes, cur)
    end
    cur = cur + 2
  end
  return primes[#primes]
end
