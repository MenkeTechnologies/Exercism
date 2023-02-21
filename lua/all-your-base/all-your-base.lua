local function to_decimal(digits, base)
  local acc = 0
  for i, n in ipairs(digits) do
    assert(n >= 0, 'negative digits are not allowed')
    assert(n < base, 'digit out of range')
    acc = acc * base + n
  end
  return acc
end
local function from_decimal(decimal, base)
  local digits = {}
  while decimal > 0 do
    table.insert(digits, 1, decimal % base)
    decimal = decimal // base
  end
  return #digits > 0 and digits or { 0 }
end
return {
  convert = function(from_digits, from_base)
    return {
      to = function(to_base)
        assert(from_base > 1, 'invalid input base')
        assert(to_base > 1, 'invalid output base')
        local decimal = to_decimal(from_digits, from_base)
        return from_decimal(decimal, to_base)
      end
    }
  end
}
