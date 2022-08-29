local Words = {
    'wink', 'double blink', 'close your eyes', 'jump'
}

local function reverse(t)
  local reversed = {}
  for i = #t, 1, -1 do
    table.insert(reversed, t[i])
  end
  return reversed
end
return function(n)
  local r = {}
  for i = 1, 4 do
    local mask = 1 << i - 1
    if n & mask > 0 then
        n = n - mask
        table.insert(r, Words[i])
    end
  end
  if n & 16 > 0 then r = reverse(r) end
  return r
end
