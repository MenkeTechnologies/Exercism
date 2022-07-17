return {
  encode = function(s)
  local lc = s:lower()
  local trans = lc:gsub("%a", function(raw) return string.char(string.byte('z') - raw:byte() + string.byte('a')) end)
  trans = trans:gsub("%W", '')
  if #trans <= 5 then return trans end
  local encoded = ''
  for i=1, #trans, 5 do
    local j = i + 4
    if j > #trans then j = #trans end
    encoded = encoded .. trans:sub(i,j) .. ' '
  end
  return encoded:sub(1,-2)

  end
}
