return function(n)
  local factor = 2
  local prime_factors = {}
  while n > 1 do
    while n % factor == 0 do
      table.insert(prime_factors, factor)
      n = n / factor
    end
    factor = factor + 1
  end

  return prime_factors
end
